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
            store.getSequenceFiles();
            store.getQuestionFiles();
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
                          width: 170,
                          child: Row(
                            children: [
                              IconButton(
                                tooltip: 'View',
                                onPressed: () {
                                  setState(() {
                                    store.fileName = store.files.elementAt(i);
                                  });
                                  Modular.to.pushNamed(
                                      '/userQuestions/view/${i.toString()}');
                                },
                                icon: const Icon(Icons.remove_red_eye),
                                color: Colors.grey,
                              ),
                              IconButton(
                                tooltip: 'Edit',
                                onPressed: () {
                                  setState(() {
                                    store.fileName = store.files.elementAt(i);
                                  });
                                  Modular.to.pushNamed(
                                      '/userQuestions/edit/${i.toString()}');
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
                              ),
                              IconButton(
                                tooltip: 'Run',
                                onPressed: () {
                                  Dialogs dialog = Dialogs(
                                      context: context, goToHome: false);
                                  dialog.showAlertDialog().then(
                                    (value) {
                                      if (value) {
                                        store
                                            .callBackend('question',
                                                store.files.elementAt(i))
                                            .then((value) => {
                                                  showDialog<String>(
                                                    context: context,
                                                    builder: (BuildContext
                                                            context) =>
                                                        AlertDialog(
                                                      title: const Text(
                                                          'Return Code'),
                                                      content: Text(
                                                          'Finnished running ${store.files.elementAt(i)}\nReturned Code: $value'),
                                                      actions: <Widget>[
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context,
                                                                  'OK'),
                                                          child:
                                                              const Text('OK'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                });
                                      }
                                    },
                                  );
                                },
                                icon: const Icon(Icons.play_arrow),
                                color: Colors.green,
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
        tooltip: 'New User Question',
        onPressed: () {
          setState(() {
            store.newQuestion = Question();
          });
          Modular.to.pushNamed('/userQuestions/create');
          //store.callBackend('question', 'teste.json');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
