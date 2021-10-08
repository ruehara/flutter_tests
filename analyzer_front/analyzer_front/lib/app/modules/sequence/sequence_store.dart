import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'sequence_store.g.dart';

class SequenceStore = _SequenceStoreBase with _$SequenceStore;

abstract class _SequenceStoreBase with Store {
  @observable
  ObservableList<Sequence> sequences = ObservableList<Sequence>();

  @observable
  var edtTitle = TextEditingController();

  @observable
  var edtDescription = TextEditingController();

  @observable
  var edtDbms = TextEditingController();

  @observable
  bool isEditing = false;

  String fileName = '';

  List<String> dbmsList = [];

  @observable
  ObservableList<String> questionOptions = ObservableList<String>();

  @action
  void editing(bool value) {
    isEditing = value;
  }

  @observable
  Sequence newSequence = Sequence();
  @observable
  ObservableList<String> files = ObservableList<String>();
  String filePath =
      '${Directory.current.path}${Platform.pathSeparator}Sequences';
  @action
  void setTitle(String value) {
    newSequence.title = value;
  }

  @action
  void setDescription(String value) {
    newSequence.description = value;
  }

  @action
  void setDbms(String value) {
    newSequence.description = value;
  }

  @action
  Future<bool> readJsonFile() async {
    try {
      final dir = Directory(filePath);
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var question in entities) {
        var string = await File(question.path).readAsString();
        Map<String, dynamic> settingsMap = await jsonDecode(string.toString());
        sequences.add(Sequence.fromJson(settingsMap));
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> saveJsonFile() async {
    try {
      var data = newSequence.toJson();
      final File file = File('$filePath${Platform.pathSeparator}$fileName');
      await file.writeAsString(jsonEncode(data));
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> getFiles() async {
    try {
      files.clear();
      final dir = Directory(filePath);
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var question in entities) {
        files.add(question.path.split(Platform.pathSeparator).last);
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> getQuestionFiles() async {
    try {
      questionOptions.clear();
      final dir = Directory(
          '${Directory.current.path}${Platform.pathSeparator}Questions');
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var sequence in entities) {
        questionOptions.add(sequence.path.split(Platform.pathSeparator).last);
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> deleteFile(String fileName, int index) async {
    try {
      sequences.removeAt(index);
      files.removeAt(index);
      File('$filePath${Platform.pathSeparator}$fileName').delete();
    } on Exception catch (_) {
      return false;
    }
    return true;
  }

  @action
  void getByIndex(int index) {
    newSequence = sequences.elementAt(index);
  }

  @action
  void initialization() {
    edtTitle.text = newSequence.title;
    edtDescription.text = newSequence.description;
  }
}
