import 'package:analyzer_front/app/analyzer_library.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, this.title = 'Settings Page'})
      : super(key: key);

  final String title;
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  final SettingsStore store = Modular.get();
  final SideMenu sideMenu = Modular.get();
  @override
  void initState() {
    super.initState();
    store.readJsonFile().then(
          (_) => setState(() {
            store.initialization();
          }),
        );
  }

  _textInput({
    required TextEditingController controller,
    required String labelText,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: 1,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: (value) =>
          value!.isEmpty ? '$labelText can\'t be empty' : null,
    );
  }

  _dropdown({
    required String label,
    required List<String> list,
    required TextEditingController controller,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 10,
      ),
      Text(
        label,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 11, color: Colors.black54),
      ),
      DropdownButton<String>(
        value: controller.text,
        icon: const Icon(Icons.arrow_drop_down_sharp),
        isDense: true,
        iconSize: 22,
        elevation: 16,
        isExpanded: true,
        underline: Container(
          height: 2,
          color: Colors.black12,
        ),
        onChanged: (String? newValue) {
          setState(() {
            controller.text = newValue!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (context) => Row(
          children: [
            sideMenu,
            Expanded(
              flex: 1,
              child: Center(
                child: Form(
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                          child: formFieldsLeft(),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        Expanded(
                          child: formFieldsRight(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget formFieldsLeft() {
    return Column(children: [
      _textInput(
          controller: store.edtQuestionDirectory,
          labelText: 'Question Directory'),
      _textInput(
          controller: store.edtUserQuestionDirectory,
          labelText: 'UserQuestion Directory'),
      _textInput(
          controller: store.edtSequenceDirectory,
          labelText: 'Sequence Directory'),
      _textInput(
          controller: store.edtReportDirectory, labelText: 'Report Directory'),
      _textInput(controller: store.edtLogDirectory, labelText: 'Log Directory'),
      _textInput(controller: store.edtLogFileName, labelText: 'Log FileName'),
    ]);
  }

  Widget formFieldsRight() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _dropdown(
          label: 'Log Detail Level',
          controller: store.edtLogDetail,
          list: ['', 'low', 'medium', 'high']),
      _dropdown(
          label: 'User Profile',
          controller: store.edtUserProfile,
          list: ['', 'admin', 'user']),
      _textInput(
          controller: store.edtFirebirdPrefix, labelText: 'Firebird Prefix'),
      _textInput(
          controller: store.edtSqlServerPrefix, labelText: 'SqlServer Prefix'),
      _textInput(controller: store.edtOraclePrefix, labelText: 'Oracle Prefix'),
      _textInput(controller: store.edtSqLitePrefix, labelText: 'SQLite Prefix'),
    ]);
  }
}
