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
    required Function onchanged,
    required bool enabled,
    required Key key,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        key: key,
        enabled: enabled,
        controller: controller,
        onChanged: (value) => onchanged(value),
        maxLines: 1,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        validator: (value) =>
            value!.isEmpty ? '$labelText can\'t be empty' : null,
      ),
    );
  }

  _dropdown({
    required String label,
    required List<String> list,
    required TextEditingController controller,
    required Function onchanged,
    required Key key,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 11, color: Colors.black54),
        ),
        DropdownButton<String>(
          key: key,
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
          onChanged: (newValue) {
            setState(() {
              controller.text = newValue!;
              onchanged(newValue);
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          sideMenu,
          Expanded(
            flex: 1,
            child: Center(
              child: Observer(
                builder: (context) => Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
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
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton.icon(
                              key: const Key('Cancel'),
                              onPressed: () {
                                sideMenu.setSelected(0);
                                Modular.to.navigate(Modular.initialRoute);
                              },
                              icon: const Icon(Icons.cancel),
                              label: const Text("Cancel"),
                            ),
                            TextButton.icon(
                              key: const Key('Restore'),
                              onPressed: () {
                                setState(() {
                                  store.setDefaults();
                                });
                              },
                              icon: const Icon(Icons.restore),
                              label: const Text("Restore"),
                            ),
                            TextButton.icon(
                              key: const Key('Save'),
                              onPressed: () {
                                Dialogs dialog =
                                    Dialogs(context: context, goToHome: true);
                                dialog.showAlertDialog().then(
                                  (value) {
                                    if (value) {
                                      store.saveJsonFile();
                                    }
                                  },
                                );
                              },
                              icon: const Icon(Icons.save),
                              label: const Text("Save"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget formFieldsLeft() {
    return Observer(
      builder: (_) => Column(children: [
        _textInput(
            key: const Key('Question_directory'),
            controller: store.edtQuestionDirectory,
            onchanged: store.setQuestionDirectory,
            labelText: 'Question Directory',
            enabled: false),
        _textInput(
            key: const Key('UserQuestion_directory'),
            controller: store.edtUserQuestionDirectory,
            onchanged: store.setUserQuestionDirectory,
            labelText: 'UserQuestion Directory',
            enabled: false),
        _textInput(
            key: const Key('Sequence_directory'),
            controller: store.edtSequenceDirectory,
            onchanged: store.setSequenceDirectory,
            labelText: 'Sequence Directory',
            enabled: false),
        _textInput(
            key: const Key('Report_directory'),
            controller: store.edtReportDirectory,
            onchanged: store.setReportDirectory,
            labelText: 'Report Directory',
            enabled: false),
        _textInput(
            key: const Key('Log_directory'),
            controller: store.edtLogDirectory,
            onchanged: store.setLogDirectory,
            labelText: 'Log Directory',
            enabled: false),
        _textInput(
          key: const Key('Log_Filename'),
          controller: store.edtLogFileName,
          onchanged: store.setLogFileName,
          labelText: 'Log FileName',
          enabled: true,
        ),
      ]),
    );
  }

  Widget formFieldsRight() {
    return Observer(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _dropdown(
              key: const Key('Log_Detail_Level'),
              label: 'Log Detail Level',
              controller: store.edtLogDetail,
              onchanged: store.setLogDetailLevel,
              list: ['low', 'medium', 'high']),
          _dropdown(
              key: const Key('User_Profile'),
              label: 'User Profile',
              controller: store.edtUserProfile,
              onchanged: store.setUserProfile,
              list: ['admin', 'user']),
          _textInput(
            key: const Key('Firebird_Prefix'),
            controller: store.edtFirebirdPrefix,
            onchanged: store.setFirebirdPrefix,
            labelText: 'Firebird Prefix',
            enabled: true,
          ),
          _textInput(
            key: const Key('SqlServer_Prefix'),
            controller: store.edtSqlServerPrefix,
            onchanged: store.setSqlServerPrefix,
            labelText: 'SqlServer Prefix',
            enabled: true,
          ),
          _textInput(
            key: const Key('Oracle_Prefix'),
            controller: store.edtOraclePrefix,
            onchanged: store.setOraclePrefix,
            labelText: 'Oracle Prefix',
            enabled: true,
          ),
          _textInput(
            key: const Key('SQLite_Prefix'),
            controller: store.edtSqLitePrefix,
            onchanged: store.setSqLitePrefix,
            labelText: 'SQLite Prefix',
            enabled: true,
          ),
        ],
      ),
    );
  }
}
