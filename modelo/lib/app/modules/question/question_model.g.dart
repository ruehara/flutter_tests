// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Question on _Question, Store {
  final _$titleAtom = Atom(name: '_Question.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_Question.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$runParserAtom = Atom(name: '_Question.runParser');

  @override
  bool get runParser {
    _$runParserAtom.reportRead();
    return super.runParser;
  }

  @override
  set runParser(bool value) {
    _$runParserAtom.reportWrite(value, super.runParser, () {
      super.runParser = value;
    });
  }

  final _$dbmsAtom = Atom(name: '_Question.dbms');

  @override
  List<String> get dbms {
    _$dbmsAtom.reportRead();
    return super.dbms;
  }

  @override
  set dbms(List<String> value) {
    _$dbmsAtom.reportWrite(value, super.dbms, () {
      super.dbms = value;
    });
  }

  final _$beforeSqlAtom = Atom(name: '_Question.beforeSql');

  @override
  String get beforeSql {
    _$beforeSqlAtom.reportRead();
    return super.beforeSql;
  }

  @override
  set beforeSql(String value) {
    _$beforeSqlAtom.reportWrite(value, super.beforeSql, () {
      super.beforeSql = value;
    });
  }

  final _$sqlAtom = Atom(name: '_Question.sql');

  @override
  List<String> get sql {
    _$sqlAtom.reportRead();
    return super.sql;
  }

  @override
  set sql(List<String> value) {
    _$sqlAtom.reportWrite(value, super.sql, () {
      super.sql = value;
    });
  }

  final _$afterSqlAtom = Atom(name: '_Question.afterSql');

  @override
  String get afterSql {
    _$afterSqlAtom.reportRead();
    return super.afterSql;
  }

  @override
  set afterSql(String value) {
    _$afterSqlAtom.reportWrite(value, super.afterSql, () {
      super.afterSql = value;
    });
  }

  final _$variablesAtom = Atom(name: '_Question.variables');

  @override
  List<QuestionVariable> get variables {
    _$variablesAtom.reportRead();
    return super.variables;
  }

  @override
  set variables(List<QuestionVariable> value) {
    _$variablesAtom.reportWrite(value, super.variables, () {
      super.variables = value;
    });
  }

  final _$questionListAtom = Atom(name: '_Question.questionList');

  @override
  List<String> get questionList {
    _$questionListAtom.reportRead();
    return super.questionList;
  }

  @override
  set questionList(List<String> value) {
    _$questionListAtom.reportWrite(value, super.questionList, () {
      super.questionList = value;
    });
  }

  final _$sequenceListAtom = Atom(name: '_Question.sequenceList');

  @override
  List<String> get sequenceList {
    _$sequenceListAtom.reportRead();
    return super.sequenceList;
  }

  @override
  set sequenceList(List<String> value) {
    _$sequenceListAtom.reportWrite(value, super.sequenceList, () {
      super.sequenceList = value;
    });
  }

  final _$_QuestionActionController = ActionController(name: '_Question');

  @override
  void setTitle(String value) {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_QuestionActionController.startAction(
        name: '_Question.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRunParser(bool value) {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.setRunParser');
    try {
      return super.setRunParser(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDbms(List<String> value) {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.setDbms');
    try {
      return super.setDbms(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBeforeSql(String value) {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.setBeforeSql');
    try {
      return super.setBeforeSql(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSql(List<String> value) {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.setSql');
    try {
      return super.setSql(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAfterSql(String value) {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.setAfterSql');
    try {
      return super.setAfterSql(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVariables(List<QuestionVariable> value) {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.setVariables');
    try {
      return super.setVariables(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setQuestionList(List<String> value) {
    final _$actionInfo = _$_QuestionActionController.startAction(
        name: '_Question.setQuestionList');
    try {
      return super.setQuestionList(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSequenceList(List<String> value) {
    final _$actionInfo = _$_QuestionActionController.startAction(
        name: '_Question.setSequenceList');
    try {
      return super.setSequenceList(value);
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final _$actionInfo =
        _$_QuestionActionController.startAction(name: '_Question.toJson');
    try {
      return super.toJson();
    } finally {
      _$_QuestionActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
description: ${description},
runParser: ${runParser},
dbms: ${dbms},
beforeSql: ${beforeSql},
sql: ${sql},
afterSql: ${afterSql},
variables: ${variables},
questionList: ${questionList},
sequenceList: ${sequenceList}
    ''';
  }
}
