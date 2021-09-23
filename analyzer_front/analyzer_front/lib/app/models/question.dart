import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  Question();

  @observable
  String filename = "";

  @JsonKey(name: 'Title')
  @observable
  String title = "";

  @JsonKey(name: 'Description')
  @observable
  String description = "";

  @JsonKey(name: 'RunParser')
  @observable
  bool runParser = false;

  @JsonKey(name: 'Dbms')
  @observable
  List<String> dbms = [];

  @JsonKey(name: 'BeforeSql')
  @observable
  String beforeSql = "";

  @JsonKey(name: 'Sql')
  @observable
  List<String> sql = [];

  @JsonKey(name: 'AfterSql')
  @observable
  String afterSql = "";

  @JsonKey(name: 'Variables')
  @observable
  List<Variable> variables = [];

  @JsonKey(name: 'QuestionList')
  @observable
  List<String> questionList = [];

  @JsonKey(name: 'SequenceList')
  @observable
  List<String> sequenceList = [];

  @action
  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  @action
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
