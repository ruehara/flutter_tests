import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionDetail extends StatefulWidget {
  final String fileName;
  final String action;

  const UserQuestionDetail(
      {Key? key, required this.fileName, required this.action})
      : super(key: key);

  @override
  _UserQuestionDetailState createState() => _UserQuestionDetailState();
}

class _UserQuestionDetailState
    extends ModularState<UserQuestionDetail, UserQuestionStore> {
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.fileName),
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
                                child: TextFormField(
                                  enabled: false,
                                  controller: store.edtFileName,
                                  onChanged: (value) =>
                                      store.newQuestion.filename = value,
                                  maxLines: 1,
                                  decoration: const InputDecoration(
                                    labelText: 'FileName',
                                  ),
                                  validator: (value) => value!.isEmpty
                                      ? 'FileName can\'t be empty'
                                      : null,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20),
                              ),
                              //Expanded(
                              //  child: formFieldsRight(),
                              //),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  sideMenu.setSelected(0);
                                  Modular.to.navigate(Modular.initialRoute);
                                },
                                icon: const Icon(Icons.cancel),
                                label: const Text("Cancel"),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  setState(() {});
                                },
                                icon: const Icon(Icons.restore),
                                label: const Text("Restore"),
                              ),
                              TextButton.icon(
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
      ),
    );
  }
}
