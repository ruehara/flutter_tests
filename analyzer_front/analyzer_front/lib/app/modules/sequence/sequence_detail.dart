import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:analyzer_front/app/widgets/custom_selection.dart';
import 'package:multiselect/multiselect.dart';

class SequenceDetail extends StatefulWidget {
  final String? index;
  final String action;
  const SequenceDetail({Key? key, this.index, required this.action})
      : super(key: key);

  @override
  _SequenceDetailState createState() => _SequenceDetailState();
}

class _SequenceDetailState extends State<SequenceDetail> {
  final SideMenu sideMenu = Modular.get();
  final SequenceStore store = Modular.get();
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
    return Container(
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(store.newSequence.title),
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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Observer(
                                builder: (_) => Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
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
                                        SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          'Data Base Managment System',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black54),
                                        ),
                                        DropDownMultiSelect(
                                          enabled: store.isEditing,
                                          onChanged: (List<String> value) {
                                            setState(() {
                                              store.dbmsList = value;
                                            });
                                          },
                                          options: const [
                                            'firebird',
                                            'oracle',
                                            'sqlserver'
                                          ],
                                          selectedValues:
                                              store.newSequence.dataBase,
                                          whenEmpty: 'Select Something',
                                        ),
                                        const Text(
                                          'Questions',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black54),
                                        ),
                                        DropDownMultiSelect(
                                          enabled: store.isEditing,
                                          onChanged: (List<String> value) {
                                            setState(() {
                                              store.newSequence.questions =
                                                  value;
                                            });
                                          },
                                          options: store.questionOptions,
                                          selectedValues:
                                              store.newSequence.questions,
                                          whenEmpty: 'Select Something',
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            store.isEditing
                                ? TextButton.icon(
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
          ],
        ),
      ),
    );
  }
}
