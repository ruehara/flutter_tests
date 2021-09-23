import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionPage extends StatefulWidget {
  final String title;
  const UserQuestionPage({Key? key, this.title = "User Question Page"})
      : super(key: key);

  @override
  _UserQuestionState createState() => _UserQuestionState();
}

class _UserQuestionState
    extends ModularState<UserQuestionPage, UserQuestionStore> {
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  @override
  void initState() {
    super.initState();
    store.readJsonFile().then(
          (_) => setState(() {}),
        );
    store.getFiles();
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
                    itemCount: store.questions.length,
                    itemBuilder: (_, i) => ListTile(
                        tileColor: (i % 2 == 0 ? Colors.white : Colors.black12),
                        title: Text(store.questions.elementAt(i).filename),
                        subtitle: Text(store.questions.elementAt(i).title),
                        trailing: SizedBox(
                          width: 130,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Modular.to.pushNamed(
                                      '/userQuestions/${store.questions.elementAt(i).filename}/view');
                                },
                                icon: const Icon(Icons.remove_red_eye),
                                color: Colors.grey,
                              ),
                              IconButton(
                                onPressed: () {
                                  Modular.to.pushNamed(
                                      '/userQuestions/${store.questions.elementAt(i).filename}/edit');
                                },
                                icon: const Icon(Icons.edit),
                                color: Colors.orange,
                              ),
                              IconButton(
                                onPressed: () {
                                  Dialogs dialog = Dialogs(
                                      context: context, goToHome: false);
                                  dialog.showAlertDialog().then(
                                    (value) {
                                      if (value) {
                                        store.deleteFile(
                                            store.questions
                                                .elementAt(i)
                                                .filename,
                                            i);
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
        onPressed: () {
          Modular.to.pushNamed('/userQuestions/add/create');
          //store.callBackend('question', 'teste.json');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
