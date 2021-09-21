import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'user_question_store.g.dart';

class UserQuestionStore = _UserQuestionStoreBase with _$UserQuestionStore;
final SettingsStore settingsStore = Modular.get();

abstract class _UserQuestionStoreBase with Store {
  @observable
  List<Question> questions = <Question>[];

  @observable
  Question newQuestion = Question();

  final String filePath =
      '${Directory.current.path}/${settingsStore.settings.userQuestionDirectory}';

  @action
  Future<bool> readJsonFile() async {
    try {
      final dir = Directory(filePath);
      final List<FileSystemEntity> entities = await dir.list().toList();
      for (var question in entities) {
        var string = await File(question.path).readAsString();
        Map<String, dynamic> settingsMap = await jsonDecode(string.toString());
        questions.add(Question.fromJson(settingsMap));
      }
      //if (await File(filePath).exists()) {
      //  var string = await File(filePath).readAsString();
      //  Map<String, dynamic> settingsMap = await jsonDecode(string.toString());
      //  newQuestion = Question.fromJson(settingsMap);
      //} else {
      //  return await createJsonFile();
      //}
      return true;
    } on Exception catch (_) {
      return false;
    }
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
}
