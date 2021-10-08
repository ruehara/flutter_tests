import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionSql extends StatefulWidget {
  final String index;
  const UserQuestionSql({Key? key, required this.index}) : super(key: key);

  @override
  _UserQuestionSqlState createState() => _UserQuestionSqlState();
}

class _UserQuestionSqlState extends State<UserQuestionSql> {
  final UserQuestionStore store = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  final SideMenu sideMenu = Modular.get();
  TextEditingController edt = TextEditingController();

  @override
  void initState() {
    edt.text = store.newQuestion.sql.elementAt(int.parse(widget.index));
    super.initState();
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
                  builder: (context) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 200,
                          child: TextFormField(
                            key: const Key('Sql'),
                            enabled: store.isEditing,
                            controller: edt,
                            onChanged: (value) => store.newQuestion
                                .sql[int.parse(widget.index)] = value,
                            maxLines: 500,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Add your text here',
                            ),
                          ),
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
            ],
          ),
        ));
  }
}
