import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'settings.g.dart';

@JsonSerializable()
class Settings {
  Settings();

  @JsonKey(name: 'QuestionDirectory')
  @observable
  String questionDirectory = "";

  @JsonKey(name: 'UserQuestionDirectory')
  @observable
  String userQuestionDirectory = "";

  @JsonKey(name: 'SequenceDirectory')
  @observable
  String sequenceDirectory = "";

  @JsonKey(name: 'ReportDirectory')
  @observable
  String reportDirectory = "";

  @JsonKey(name: 'LogDirectory')
  @observable
  String logDirectory = "";

  @JsonKey(name: 'LogFileName')
  @observable
  String logFileName = "";

  @JsonKey(name: 'LogDetailLevel')
  @observable
  String logDetailLevel = "";

  @JsonKey(name: 'UserProfile')
  @observable
  String userProfile = "";

  @JsonKey(name: 'FirebirdPrefix')
  @observable
  String firebirdPrefix = "";

  @JsonKey(name: 'SqlServerPrefix')
  @observable
  String sqlServerPrefix = "";

  @JsonKey(name: 'OraclePrefix')
  @observable
  String oraclePrefix = "";

  @JsonKey(name: 'SqLitePrefix')
  @observable
  String sqLitePrefix = "";

  @action
  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  @action
  Map<String, dynamic> toJson() => _$SettingsToJson(this);
}
