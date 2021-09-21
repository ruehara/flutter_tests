// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question()
  ..title = json['Title'] as String
  ..description = json['Description'] as String
  ..runParser = json['RunParser'] as bool
  ..dbms = (json['Dbms'] as List<dynamic>).map((e) => e as String).toList()
  ..beforeSql = json['BeforeSql'] as String
  ..sql = (json['Sql'] as List<dynamic>).map((e) => e as String).toList()
  ..afterSql = json['AfterSql'] as String
  ..variables = (json['Variables'] as List<dynamic>)
      .map((e) => Variable.fromJson(e as Map<String, dynamic>))
      .toList()
  ..questionList = (json['QuestionList'] as List<dynamic>)
      .map((e) => Question.fromJson(e as Map<String, dynamic>))
      .toList()
  ..sequenceList = (json['SequenceList'] as List<dynamic>)
      .map((e) => Sequence.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'Title': instance.title,
      'Description': instance.description,
      'RunParser': instance.runParser,
      'Dbms': instance.dbms,
      'BeforeSql': instance.beforeSql,
      'Sql': instance.sql,
      'AfterSql': instance.afterSql,
      'Variables': instance.variables,
      'QuestionList': instance.questionList,
      'SequenceList': instance.sequenceList,
    };
