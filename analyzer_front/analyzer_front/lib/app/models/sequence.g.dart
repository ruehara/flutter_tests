// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sequence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sequence _$SequenceFromJson(Map<String, dynamic> json) => Sequence()
  ..title = json['Title'] as String
  ..description = json['Description'] as String
  ..dataBase =
      (json['DataBase'] as List<dynamic>).map((e) => e as String).toList()
  ..questions =
      (json['Questions'] as List<dynamic>).map((e) => e as String).toList();

Map<String, dynamic> _$SequenceToJson(Sequence instance) => <String, dynamic>{
      'Title': instance.title,
      'Description': instance.description,
      'DataBase': instance.dataBase,
      'Questions': instance.questions,
    };
