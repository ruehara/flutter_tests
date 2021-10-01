// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_question_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserQuestionStore on _UserQuestionStoreBase, Store {
  final _$questionsAtom = Atom(name: '_UserQuestionStoreBase.questions');

  @override
  ObservableList<Question> get questions {
    _$questionsAtom.reportRead();
    return super.questions;
  }

  @override
  set questions(ObservableList<Question> value) {
    _$questionsAtom.reportWrite(value, super.questions, () {
      super.questions = value;
    });
  }

  final _$filesAtom = Atom(name: '_UserQuestionStoreBase.files');

  @override
  ObservableList<String> get files {
    _$filesAtom.reportRead();
    return super.files;
  }

  @override
  set files(ObservableList<String> value) {
    _$filesAtom.reportWrite(value, super.files, () {
      super.files = value;
    });
  }

  final _$newQuestionAtom = Atom(name: '_UserQuestionStoreBase.newQuestion');

  @override
  Question get newQuestion {
    _$newQuestionAtom.reportRead();
    return super.newQuestion;
  }

  @override
  set newQuestion(Question value) {
    _$newQuestionAtom.reportWrite(value, super.newQuestion, () {
      super.newQuestion = value;
    });
  }

  final _$isEditingAtom = Atom(name: '_UserQuestionStoreBase.isEditing');

  @override
  bool get isEditing {
    _$isEditingAtom.reportRead();
    return super.isEditing;
  }

  @override
  set isEditing(bool value) {
    _$isEditingAtom.reportWrite(value, super.isEditing, () {
      super.isEditing = value;
    });
  }

  final _$edtFileNameAtom = Atom(name: '_UserQuestionStoreBase.edtFileName');

  @override
  TextEditingController get edtFileName {
    _$edtFileNameAtom.reportRead();
    return super.edtFileName;
  }

  @override
  set edtFileName(TextEditingController value) {
    _$edtFileNameAtom.reportWrite(value, super.edtFileName, () {
      super.edtFileName = value;
    });
  }

  final _$edtTitleAtom = Atom(name: '_UserQuestionStoreBase.edtTitle');

  @override
  TextEditingController get edtTitle {
    _$edtTitleAtom.reportRead();
    return super.edtTitle;
  }

  @override
  set edtTitle(TextEditingController value) {
    _$edtTitleAtom.reportWrite(value, super.edtTitle, () {
      super.edtTitle = value;
    });
  }

  final _$edtDescriptionAtom =
      Atom(name: '_UserQuestionStoreBase.edtDescription');

  @override
  TextEditingController get edtDescription {
    _$edtDescriptionAtom.reportRead();
    return super.edtDescription;
  }

  @override
  set edtDescription(TextEditingController value) {
    _$edtDescriptionAtom.reportWrite(value, super.edtDescription, () {
      super.edtDescription = value;
    });
  }

  final _$edtRunParserAtom = Atom(name: '_UserQuestionStoreBase.edtRunParser');

  @override
  TextEditingController get edtRunParser {
    _$edtRunParserAtom.reportRead();
    return super.edtRunParser;
  }

  @override
  set edtRunParser(TextEditingController value) {
    _$edtRunParserAtom.reportWrite(value, super.edtRunParser, () {
      super.edtRunParser = value;
    });
  }

  final _$edtDbmsAtom = Atom(name: '_UserQuestionStoreBase.edtDbms');

  @override
  TextEditingController get edtDbms {
    _$edtDbmsAtom.reportRead();
    return super.edtDbms;
  }

  @override
  set edtDbms(TextEditingController value) {
    _$edtDbmsAtom.reportWrite(value, super.edtDbms, () {
      super.edtDbms = value;
    });
  }

  final _$edtBeforeSqlAtom = Atom(name: '_UserQuestionStoreBase.edtBeforeSql');

  @override
  TextEditingController get edtBeforeSql {
    _$edtBeforeSqlAtom.reportRead();
    return super.edtBeforeSql;
  }

  @override
  set edtBeforeSql(TextEditingController value) {
    _$edtBeforeSqlAtom.reportWrite(value, super.edtBeforeSql, () {
      super.edtBeforeSql = value;
    });
  }

  final _$edtSqlAtom = Atom(name: '_UserQuestionStoreBase.edtSql');

  @override
  TextEditingController get edtSql {
    _$edtSqlAtom.reportRead();
    return super.edtSql;
  }

  @override
  set edtSql(TextEditingController value) {
    _$edtSqlAtom.reportWrite(value, super.edtSql, () {
      super.edtSql = value;
    });
  }

  final _$edtAfterSqlAtom = Atom(name: '_UserQuestionStoreBase.edtAfterSql');

  @override
  TextEditingController get edtAfterSql {
    _$edtAfterSqlAtom.reportRead();
    return super.edtAfterSql;
  }

  @override
  set edtAfterSql(TextEditingController value) {
    _$edtAfterSqlAtom.reportWrite(value, super.edtAfterSql, () {
      super.edtAfterSql = value;
    });
  }

  final _$edtVariablesAtom = Atom(name: '_UserQuestionStoreBase.edtVariables');

  @override
  TextEditingController get edtVariables {
    _$edtVariablesAtom.reportRead();
    return super.edtVariables;
  }

  @override
  set edtVariables(TextEditingController value) {
    _$edtVariablesAtom.reportWrite(value, super.edtVariables, () {
      super.edtVariables = value;
    });
  }

  final _$edtQuestionListAtom =
      Atom(name: '_UserQuestionStoreBase.edtQuestionList');

  @override
  TextEditingController get edtQuestionList {
    _$edtQuestionListAtom.reportRead();
    return super.edtQuestionList;
  }

  @override
  set edtQuestionList(TextEditingController value) {
    _$edtQuestionListAtom.reportWrite(value, super.edtQuestionList, () {
      super.edtQuestionList = value;
    });
  }

  final _$edtSequenceListAtom =
      Atom(name: '_UserQuestionStoreBase.edtSequenceList');

  @override
  TextEditingController get edtSequenceList {
    _$edtSequenceListAtom.reportRead();
    return super.edtSequenceList;
  }

  @override
  set edtSequenceList(TextEditingController value) {
    _$edtSequenceListAtom.reportWrite(value, super.edtSequenceList, () {
      super.edtSequenceList = value;
    });
  }

  final _$readJsonFileAsyncAction =
      AsyncAction('_UserQuestionStoreBase.readJsonFile');

  @override
  Future<bool> readJsonFile() {
    return _$readJsonFileAsyncAction.run(() => super.readJsonFile());
  }

  final _$getFilesAsyncAction = AsyncAction('_UserQuestionStoreBase.getFiles');

  @override
  Future<bool> getFiles() {
    return _$getFilesAsyncAction.run(() => super.getFiles());
  }

  final _$deleteFileAsyncAction =
      AsyncAction('_UserQuestionStoreBase.deleteFile');

  @override
  Future<bool> deleteFile(String fileName, int index) {
    return _$deleteFileAsyncAction.run(() => super.deleteFile(fileName, index));
  }

  final _$createJsonFileAsyncAction =
      AsyncAction('_UserQuestionStoreBase.createJsonFile');

  @override
  Future<bool> createJsonFile() {
    return _$createJsonFileAsyncAction.run(() => super.createJsonFile());
  }

  final _$saveJsonFileAsyncAction =
      AsyncAction('_UserQuestionStoreBase.saveJsonFile');

  @override
  Future<bool> saveJsonFile() {
    return _$saveJsonFileAsyncAction.run(() => super.saveJsonFile());
  }

  final _$callBackendAsyncAction =
      AsyncAction('_UserQuestionStoreBase.callBackend');

  @override
  Future<int> callBackend(String type, String filename) {
    return _$callBackendAsyncAction
        .run(() => super.callBackend(type, filename));
  }

  final _$_UserQuestionStoreBaseActionController =
      ActionController(name: '_UserQuestionStoreBase');

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_UserQuestionStoreBaseActionController.startAction(
        name: '_UserQuestionStoreBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_UserQuestionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_UserQuestionStoreBaseActionController.startAction(
        name: '_UserQuestionStoreBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_UserQuestionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editing(bool value) {
    final _$actionInfo = _$_UserQuestionStoreBaseActionController.startAction(
        name: '_UserQuestionStoreBase.editing');
    try {
      return super.editing(value);
    } finally {
      _$_UserQuestionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getByIndex(int index) {
    final _$actionInfo = _$_UserQuestionStoreBaseActionController.startAction(
        name: '_UserQuestionStoreBase.getByIndex');
    try {
      return super.getByIndex(index);
    } finally {
      _$_UserQuestionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initialization() {
    final _$actionInfo = _$_UserQuestionStoreBaseActionController.startAction(
        name: '_UserQuestionStoreBase.initialization');
    try {
      return super.initialization();
    } finally {
      _$_UserQuestionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
questions: ${questions},
files: ${files},
newQuestion: ${newQuestion},
isEditing: ${isEditing},
edtFileName: ${edtFileName},
edtTitle: ${edtTitle},
edtDescription: ${edtDescription},
edtRunParser: ${edtRunParser},
edtDbms: ${edtDbms},
edtBeforeSql: ${edtBeforeSql},
edtSql: ${edtSql},
edtAfterSql: ${edtAfterSql},
edtVariables: ${edtVariables},
edtQuestionList: ${edtQuestionList},
edtSequenceList: ${edtSequenceList}
    ''';
  }
}
