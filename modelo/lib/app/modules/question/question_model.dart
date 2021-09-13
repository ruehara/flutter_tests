import 'package:mobx/mobx.dart';
part 'question_model.g.dart';

class Question = _Question with _$Question;

abstract class _Question with Store {
  _Question();
  @observable
  String title;
  @observable
  String description;
  @observable
  bool runParser;
  @observable
  List<String> dbms;
  @observable
  String beforeSql;
  @observable
  List<String> sql;
  @observable
  String afterSql;
  @observable
  List<QuestionVariable> variables;
  @observable
  List<String> questionList;
  @observable
  List<String> sequenceList;

  @action
  void setTitle(String value) {
    title = value;
  }

  @action
  void setDescription(String value) {
    description = value;
  }

  @action
  void setRunParser(bool value) {
    runParser = value;
  }

  @action
  void setDbms(List<String> value) {
    dbms = value;
  }

  @action
  void setBeforeSql(String value) {
    beforeSql = value;
  }

  @action
  void setSql(List<String> value) {
    sql = value;
  }

  @action
  void setAfterSql(String value) {
    afterSql = value;
  }

  @action
  void setVariables(List<QuestionVariable> value) {
    variables = value;
  }

  @action
  void setQuestionList(List<String> value) {
    questionList = value;
  }

  @action
  void setSequenceList(List<String> value) {
    sequenceList = value;
  }

  @action
  _Question.fromJson(Map<String, dynamic> json) {
    name = json["name"].toString();
    email = json["email"].toString();
    password = json["password"].toString();
  }

  @action
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["email"] = email;
    data["password"] = password;
    return data;
  }
}

/// <summary>
/// Question Variable Class
/// </summary>
class QuestionVariable {
  late String name;
  late String type;
}
