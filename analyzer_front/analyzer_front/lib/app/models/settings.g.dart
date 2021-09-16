// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings()
  ..questionDirectory = json['QuestionDirectory'] as String
  ..userQuestionDirectory = json['UserQuestionDirectory'] as String
  ..sequenceDirectory = json['SequenceDirectory'] as String
  ..reportDirectory = json['ReportDirectory'] as String
  ..logDirectory = json['LogDirectory'] as String
  ..logFileName = json['LogFileName'] as String
  ..logDetailLevel = json['LogDetailLevel'] as String
  ..userProfile = json['UserProfile'] as String
  ..firebirdPrefix = json['FirebirdPrefix'] as String
  ..sqlServerPrefix = json['SqlServerPrefix'] as String
  ..oraclePrefix = json['OraclePrefix'] as String
  ..sqLitePrefix = json['SqLitePrefix'] as String;

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'QuestionDirectory': instance.questionDirectory,
      'UserQuestionDirectory': instance.userQuestionDirectory,
      'SequenceDirectory': instance.sequenceDirectory,
      'ReportDirectory': instance.reportDirectory,
      'LogDirectory': instance.logDirectory,
      'LogFileName': instance.logFileName,
      'LogDetailLevel': instance.logDetailLevel,
      'UserProfile': instance.userProfile,
      'FirebirdPrefix': instance.firebirdPrefix,
      'SqlServerPrefix': instance.sqlServerPrefix,
      'OraclePrefix': instance.oraclePrefix,
      'SqLitePrefix': instance.sqLitePrefix,
    };
