import 'package:analyzer_front/app/analyzer_library.dart';

class SequencePage extends StatefulWidget {
  final String title;
  const SequencePage({Key? key, this.title = 'SequencePage'}) : super(key: key);
  @override
  SequencePageState createState() => SequencePageState();
}

class SequencePageState extends State<SequencePage> {
  final SequenceStore store = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  final SideMenu sideMenu = Modular.get();
  @override
  void initState() {
    super.initState();
    store.readJsonFile().then(
          (_) => setState(() {
            store.getFiles();
            store.getQuestionFiles();
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
                                  setState(() {
                                    store.fileName = store.files.elementAt(i);
                                  });
                                  Modular.to.pushNamed(
                                      '/sequences/view/${i.toString()}');
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
                                      '/sequences/edit/${i.toString()}');
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
    );
  }
}
