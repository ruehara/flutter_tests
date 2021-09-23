import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'user_question_store.g.dart';

class UserQuestionStore = _UserQuestionStoreBase with _$UserQuestionStore;
final SettingsStore settingsStore = Modular.get();

abstract class _UserQuestionStoreBase with Store {
  @observable
  List<Question> questions = <Question>[];

  @observable
  List<String> files = <String>[];

  @observable
  Question newQuestion = Question();

  @observable
  var edtFileName = TextEditingController();
  final String filePath =
      '${Directory.current.path}${Platform.pathSeparator}${settingsStore.settings.userQuestionDirectory}';

  @action
  Future<bool> readJsonFile() async {
    try {
      final dir = Directory(filePath);
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var question in entities) {
        var string = await File(question.path).readAsString();
        Map<String, dynamic> settingsMap = await jsonDecode(string.toString());
        var questionTemp = Question.fromJson(settingsMap);
        questionTemp.filename =
            question.path.split(Platform.pathSeparator).last;
        questions.add(questionTemp);
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> getFiles() async {
    try {
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
  Future<bool> deleteFile(String fileName, int index) async {
    try {
      questions.removeAt(index);
      File('$filePath${Platform.pathSeparator}$fileName').delete();
    } on Exception catch (_) {
      return false;
    }
    return true;
  }

  @action
  Future<bool> createJsonFile() async {
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
      final File file = File(filePath);
      await file.writeAsString(jsonEncode(data));
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<int> callBackend(String type, String filename) async {
    int result = -1;
    var process = Process.start(
        '${Directory.current.path}${Platform.pathSeparator}Debug${Platform.pathSeparator}ldx_analyzer.exe',
        ['--type', type, '--input', filename]);
    await process.then((value) => () {
          return value.exitCode as int;
        });
    return result;
  }

  @action
  Question getByIndex(int index) {
    return questions.elementAt(index);
  }
}
