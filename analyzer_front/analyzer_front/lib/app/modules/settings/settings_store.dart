import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStoreBase with _$SettingsStore;

abstract class _SettingsStoreBase with Store {
  @observable
  late Settings settings;
  final String filePath = '${Directory.current.path}\\$settingsFile';

  @observable
  var edtQuestionDirectory = TextEditingController();
  @observable
  var edtUserQuestionDirectory = TextEditingController();
  @observable
  var edtSequenceDirectory = TextEditingController();
  @observable
  var edtReportDirectory = TextEditingController();
  @observable
  var edtLogDirectory = TextEditingController();
  @observable
  var edtLogFileName = TextEditingController();
  @observable
  var edtFirebirdPrefix = TextEditingController();
  @observable
  var edtSqlServerPrefix = TextEditingController();
  @observable
  var edtOraclePrefix = TextEditingController();
  @observable
  var edtSqLitePrefix = TextEditingController();

  @action
  Future<bool> readJsonFile() async {
    try {
      if (await File(filePath).exists()) {
        var string = await File(filePath).readAsString();
        Map<String, dynamic> settingsMap = await jsonDecode(string.toString());
        settings = Settings.fromJson(settingsMap);
      } else {
        return await createJsonFile();
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<bool> createJsonFile() async {
    try {
      File(filePath).create(recursive: true).then((_) async {
        setDefaults();
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
      var data = settings.toJson();
      final File file = File(filePath);
      await file.writeAsString(jsonEncode(data));
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  void setDefaults() {
    settings.questionDirectory = 'Questions';
    settings.userQuestionDirectory = 'UserQuestions';
    settings.sequenceDirectory = 'Sequences';
    settings.reportDirectory = 'Reports';
    settings.logDirectory = 'Logs';
    settings.logFileName = 'sql_analyzer.log';
    settings.logDetailLevel = 'high';
    settings.userProfile = 'admin';
    settings.firebirdPrefix = '@';
    settings.sqlServerPrefix = '@';
    settings.oraclePrefix = ':';
    settings.sqLitePrefix = ':';
  }

  @action
  void initialization() {
    edtQuestionDirectory.text = settings.questionDirectory;
    edtUserQuestionDirectory.text = settings.userQuestionDirectory;
    edtSequenceDirectory.text = settings.sequenceDirectory;
    edtReportDirectory.text = settings.reportDirectory;
    edtLogDirectory.text = settings.logDirectory;
    edtLogFileName.text = settings.logFileName;
    edtFirebirdPrefix.text = settings.firebirdPrefix;
    edtSqlServerPrefix.text = settings.sqlServerPrefix;
    edtOraclePrefix.text = settings.oraclePrefix;
    edtSqLitePrefix.text = settings.sqLitePrefix;
  }
}
