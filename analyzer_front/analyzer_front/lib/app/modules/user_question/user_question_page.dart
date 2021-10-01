import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionPage extends StatefulWidget {
  final String title;
  const UserQuestionPage({Key? key, this.title = "User Question Page"})
      : super(key: key);

  @override
  _UserQuestionState createState() => _UserQuestionState();
}

class _UserQuestionState extends State<UserQuestionPage> {
  final UserQuestionStore store = Modular.get();
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  @override
  void initState() {
    super.initState();
    store.readJsonFile().then(
          (_) => setState(() {
            store.getFiles();
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ScrollConfiguration(
        behavior: scroll,
        child: Row(
          children: [
            sideMenu,
            Expanded(
              flex: 1,
              child: Observer(
                builder: (context) => Center(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(20),
                    itemCount: store.files.length,
                    itemBuilder: (_, i) => ListTile(
                        hoverColor: Colors.black12,
                        tileColor: (i % 2 == 0 ? Colors.white : Colors.black12),
                        title: Text(store.files.elementAt(i)),
                        trailing: SizedBox(
                          width: 150,
                          child: Row(
                            children: [
                              IconButton(
                                tooltip: 'View',
                                onPressed: () {
                                  Modular.to.pushNamed(
                                      '/userQuestions/${i.toString()}/view');
                                },
                                icon: const Icon(Icons.remove_red_eye),
                                color: Colors.grey,
                              ),
                              IconButton(
                                tooltip: 'Edit',
                                onPressed: () {
                                  Modular.to.pushNamed(
                                      '/userQuestions/${i.toString()}/edit');
                                },
                                icon: const Icon(Icons.edit),
                                color: Colors.orange,
                              ),
                              IconButton(
                                tooltip: 'Delete',
                                onPressed: () {
                                  Dialogs dialog = Dialogs(
                                      context: context, goToHome: false);
                                  dialog.showAlertDialog().then(
                                    (value) {
                                      if (value) {
                                        store.deleteFile(
                                            store.files.elementAt(i), i);
                                      }
                                    },
                                  );
                                },
                                icon: const Icon(Icons.delete),
                                color: Colors.red,
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new ',
        onPressed: () {
          //Modular.to.pushNamed('/userQuestions/add/create');
          store.callBackend('question', 'teste.json');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
