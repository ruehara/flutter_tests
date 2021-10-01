import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionDetail extends StatefulWidget {
  final String index;
  final String action;
  const UserQuestionDetail(
      {Key? key, required this.index, required this.action})
      : super(key: key);

  @override
  _UserQuestionDetailState createState() => _UserQuestionDetailState();
}

class _UserQuestionDetailState extends State<UserQuestionDetail> {
  final SideMenu sideMenu = Modular.get();
  final UserQuestionStore store = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  @override
  void initState() {
    store.editing(widget.action.toLowerCase() != 'view');
    store.getByIndex(int.parse(widget.index));
    store.initialization();
    super.initState();
  }

  _textInput({
    required TextEditingController controller,
    required String labelText,
    required Function onchanged,
    required Key key,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        key: key,
        enabled: store.isEditing,
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
        title: Text(store.newQuestion.title),
      ),
      body: ScrollConfiguration(
        behavior: scroll,
        child: Row(
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
                                child: formFields(),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              store.isEditing
                                  ? TextButton.icon(
                                      onPressed: () {
                                        sideMenu.setSelected(0);
                                        Modular.to
                                            .navigate(Modular.initialRoute);
                                      },
                                      icon: const Icon(Icons.cancel),
                                      label: const Text("Cancel"),
                                    )
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    ),
                              TextButton.icon(
                                onPressed: () {
                                  if (store.isEditing) {
                                    Dialogs dialog = Dialogs(
                                        context: context, goToHome: true);
                                    dialog.showAlertDialog().then(
                                      (value) {
                                        if (value) {
                                          store.saveJsonFile();
                                        }
                                      },
                                    );
                                  } else {
                                    Modular.to.pop();
                                  }
                                },
                                icon: Icon((store.isEditing
                                    ? Icons.save
                                    : Icons.check)),
                                label: Text(store.isEditing ? "Save" : "Ok"),
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
      ),
    );
  }

  Widget formFields() {
    return Observer(
      builder: (_) => Column(children: [
        _textInput(
          controller: store.edtTitle,
          onchanged: store.setTitle,
          labelText: 'Title',
          key: const Key('Title'),
        ),
        _textInput(
          controller: store.edtDescription,
          onchanged: store.setDescription,
          labelText: 'Description',
          key: const Key('Description'),
        ),
        _dropdown(
          label: 'Run Parser',
          list: ['true', 'false'],
          controller: store.edtRunParser,
          onchanged: store.setRunParser,
          key: const Key('Run_Parser'),
        ),
        _textInput(
          controller: store.edtDescription,
          onchanged: store.setDescription,
          labelText: 'Before Sql',
          key: const Key('Before_Sql'),
        ),
        _dropdown(
          label: 'Dbms',
          list: ['oracle', 'sqlserver', 'firebird'],
          controller: store.edtDbms,
          onchanged: store.setRunParser,
          key: const Key('Dbms'),
        ),
        _textInput(
          controller: store.edtDescription,
          onchanged: store.setDescription,
          labelText: 'After Sql',
          key: const Key('After_Sql'),
        ),
      ]),
    );
  }
}
