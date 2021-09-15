// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      json['QuestionDirectory'] as String,
      json['UserQuestionDirectory'] as String,
      json['SequenceDirectory'] as String,
      json['ReportDirectory'] as String,
      json['LogDirectory'] as String,
      json['LogFileName'] as String,
      json['LogDetailLevel'] as String,
      json['UserProfile'] as String,
      json['FirebirdPrefix'] as String,
      json['SqlServerPrefix'] as String,
      json['OraclePrefix'] as String,
      json['SqLitePrefix'] as String,
    );

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
