import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:analyzer_front/app/widgets/custom_selection.dart';

class UserQuestionDetail extends StatefulWidget {
  final String? index;
  final String action;
  const UserQuestionDetail({Key? key, this.index, required this.action})
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
    if (widget.index != null) {
      store.getByIndex(int.parse(widget.index!));
    }

    store.initialization();

    super.initState();
  }

  _textInput({
    required TextEditingController controller,
    required String labelText,
    required Function onchanged,
    required Key key,
  }) {
    return TextFormField(
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
    );
  }

  _dropdown({
    required String label,
    required List<String> list,
    required TextEditingController controller,
    required Function onchanged,
    required Key key,
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
      IgnorePointer(
        ignoring: !store.isEditing,
        child: DropdownButton<String>(
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
      ),
    ]);
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
              child: Observer(
                builder: (context) => Form(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: formFields(context),
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
                                      key: const Key('Cancel'),
                                      onPressed: () {
                                        Modular.to.pop();
                                      },
                                      icon: const Icon(Icons.cancel),
                                      label: const Text("Cancel"),
                                    )
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    ),
                              TextButton.icon(
                                key: const Key('Save'),
                                onPressed: () {
                                  if (store.isEditing) {
                                    Dialogs dialog = Dialogs(
                                        context: context, goToHome: false);
                                    dialog.showAlertDialog().then(
                                      (value) {
                                        if (value) {
                                          store.saveJsonFile();
                                          Modular.to.pop();
                                        }
                                      },
                                    );
                                  } else {
                                    Modular.to.pop();
                                  }
                                },
                                icon: Icon((store.isEditing
                                    ? Icons.save
                                    : Icons.arrow_back)),
                                label: Text(store.isEditing ? "Save" : "Back"),
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

  Widget formFields(BuildContext context) {
    return Observer(
      builder: (_) => Column(children: [
        Row(
          children: [
            Expanded(
              child: _textInput(
                controller: store.edtTitle,
                onchanged: store.setTitle,
                labelText: 'Title',
                key: const Key('Title'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: _textInput(
                controller: store.edtDescription,
                onchanged: store.setDescription,
                labelText: 'Description',
                key: const Key('Description'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: _dropdown(
                label: 'Run Parser',
                list: ['false', 'true'],
                controller: store.edtRunParser,
                onchanged: store.setRunParser,
                key: const Key('Run_Parser'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: DropDownMultiSelect(
                label: const Text(
                  'DataBase Managment System',
                  style: TextStyle(fontSize: 11, color: Colors.black54),
                ),
                enabled: store.isEditing,
                onChanged: (List<String> value) {
                  setState(() {
                    store.newQuestion.dbms = value;
                  });
                },
                options: const ['firebird', 'oracle', 'sqlserver'],
                selectedValues: store.newQuestion.dbms,
                whenEmpty: 'Select Something',
              ),
            ),
          ],
        ),
        _textInput(
          controller: store.edtBeforeSql,
          onchanged: store.setBeforeSql,
          labelText: 'Before Sql',
          key: const Key('Before_Sql'),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: store.newQuestion.sql.length,
            itemBuilder: (_, i) => ListTile(
                hoverColor: Colors.black12,
                tileColor: (i % 2 == 0 ? Colors.white : Colors.black12),
                title: Text(store.newQuestion.sql.elementAt(i)),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        key: const Key('View'),
                        tooltip: 'View',
                        onPressed: () {
                          Modular.to
                              .pushNamed('/userQuestions/sql/${i.toString()}');
                        },
                        icon: const Icon(Icons.remove_red_eye),
                        color: Colors.grey,
                      ),
                      IconButton(
                        key: const Key('Edit'),
                        tooltip: 'Edit',
                        onPressed: () {
                          if (store.isEditing)
                            Modular.to.pushNamed(
                                '/userQuestions/sql/${i.toString()}');
                        },
                        icon: const Icon(Icons.edit),
                        color: Colors.orange,
                      ),
                    ],
                  ),
                )),
          ),
        ),
        _textInput(
          controller: store.edtAfterSql,
          onchanged: store.setAfterSql,
          labelText: 'After Sql',
          key: const Key('After_Sql'),
        ),
        Row(
          children: [
            Expanded(
              child: DropDownMultiSelect(
                key: const Key('Question_List'),
                label: const Text(
                  'Question List',
                  style: TextStyle(fontSize: 11, color: Colors.black54),
                ),
                enabled: store.isEditing,
                onChanged: (List<String> value) {
                  setState(() {
                    store.newQuestion.questionList = value;
                  });
                },
                options: store.questionList,
                selectedValues: store.newQuestion.questionList,
                whenEmpty: 'Select Something',
              ),
            ),
          ],
        ),
        DropDownMultiSelect(
          key: const Key('Sequence_List'),
          label: const Text(
            'Sequence List',
            style: TextStyle(fontSize: 11, color: Colors.black54),
          ),
          enabled: store.isEditing,
          onChanged: (List<String> value) {
            setState(() {
              store.newQuestion.sequenceList = value;
            });
          },
          options: store.sequenceList,
          selectedValues: store.newQuestion.sequenceList,
          whenEmpty: 'Select Something',
        ),
      ]),
    );
  }
}
