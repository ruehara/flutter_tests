import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'user_question_store.g.dart';

class UserQuestionStore = _UserQuestionStoreBase with _$UserQuestionStore;
final SettingsStore settingsStore = Modular.get();

abstract class _UserQuestionStoreBase with Store {
  @observable
  ObservableList<Question> questions = ObservableList<Question>();

  @observable
  ObservableList<String> files = ObservableList<String>();
  @observable
  ObservableList<String> questionList = ObservableList<String>();
  @observable
  ObservableList<String> sequenceList = ObservableList<String>();
  @observable
  Question newQuestion = Question();

  @observable
  bool isEditing = false;

  @observable
  var edtFileName = TextEditingController();
  String filePath = '';

  String fileName = '';

  @observable
  var edtTitle = TextEditingController();
  @observable
  var edtDescription = TextEditingController();
  @observable
  var edtRunParser = TextEditingController();
  @observable
  var edtDbms = TextEditingController();
  @observable
  var edtBeforeSql = TextEditingController();
  @observable
  var edtSql = TextEditingController();
  @observable
  var edtAfterSql = TextEditingController();
  @observable
  var edtVariables = TextEditingController();
  @observable
  var edtQuestionList = TextEditingController();
  @observable
  var edtSequenceList = TextEditingController();

  @action
  void setTitle(String value) {
    newQuestion.title = value;
  }

  @action
  void setDescription(String value) {
    newQuestion.description = value;
  }

  @action
  void setRunParser(String value) {
    newQuestion.runParser = value as bool;
    edtRunParser.text = value;
  }

  @action
  void setBeforeSql(String value) {
    newQuestion.beforeSql = value;
  }

  @action
  void setAfterSql(String value) {
    newQuestion.afterSql = value;
  }

  @action
  void setSql(List<String> value) {
    newQuestion.sql = value;
  }

  @action
  void editing(bool value) {
    isEditing = value;
  }

  @action
  Future<bool> readJsonFile() async {
    try {
      filePath =
          '${Directory.current.path}${Platform.pathSeparator}${settingsStore.settings.userQuestionDirectory}';
      final dir = Directory(filePath);
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var question in entities) {
        var string = await File(question.path).readAsString();
        Map<String, dynamic> settingsMap = await jsonDecode(string.toString());
        questions.add(Question.fromJson(settingsMap));
      }
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
      questionList.clear();
      final dir = Directory(
          '${Directory.current.path}${Platform.pathSeparator}Questions');
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var sequence in entities) {
        questionList.add(sequence.path.split(Platform.pathSeparator).last);
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> getSequenceFiles() async {
    try {
      sequenceList.clear();
      final dir = Directory(
          '${Directory.current.path}${Platform.pathSeparator}Sequences');
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var sequence in entities) {
        sequenceList.add(sequence.path.split(Platform.pathSeparator).last);
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> deleteFile(String fileName, int index) async {
    try {
      questions.removeAt(index);
      files.removeAt(index);
      File('$filePath${Platform.pathSeparator}$fileName').delete();
    } on Exception catch (_) {
      return false;
    }
    return true;
  }

  @action
  Future<bool> createJsonFile(String name) async {
    try {
      File(filePath).create(recursive: true).then((_) async {
        await saveJsonFile();
      });
    } on Exception catch (_) {
      return false;
    }
    return true;
  }

  @action
  Future<bool> saveJsonFile() async {
    try {
      var data = newQuestion.toJson();
      final File file = File('$filePath${Platform.pathSeparator}$fileName');
      await file.writeAsString(jsonEncode(data));
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<int> callBackend(String type, String filename) async {
    var process = await Process.start(
        '${Directory.current.path}${Platform.pathSeparator}Debug${Platform.pathSeparator}ldx_analyzer.exe',
        ['--type', type, '--input', filename]);
    return process.exitCode;
  }

  @action
  void getByIndex(int index) {
    newQuestion = questions.elementAt(index);
  }

  @action
  void initialization() {
    edtTitle.text = newQuestion.title;
    edtDescription.text = newQuestion.description;
    edtRunParser.text = newQuestion.runParser.toString();
  }
}
