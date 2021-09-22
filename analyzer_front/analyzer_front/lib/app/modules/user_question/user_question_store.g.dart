// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_question_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserQuestionStore on _UserQuestionStoreBase, Store {
  final _$questionsAtom = Atom(name: '_UserQuestionStoreBase.questions');

  @override
  List<Question> get questions {
    _$questionsAtom.reportRead();
    return super.questions;
  }

  @override
  set questions(List<Question> value) {
    _$questionsAtom.reportWrite(value, super.questions, () {
      super.questions = value;
    });
  }

  final _$filesAtom = Atom(name: '_UserQuestionStoreBase.files');

  @override
  List<String> get files {
    _$filesAtom.reportRead();
    return super.files;
  }

  @override
  set files(List<String> value) {
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

  @override
  String toString() {
    return '''
questions: ${questions},
files: ${files},
newQuestion: ${newQuestion}
    ''';
  }
}
