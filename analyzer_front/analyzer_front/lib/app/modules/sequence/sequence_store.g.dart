// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sequence_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SequenceStore on _SequenceStoreBase, Store {
  final _$sequencesAtom = Atom(name: '_SequenceStoreBase.sequences');

  @override
  ObservableList<Sequence> get sequences {
    _$sequencesAtom.reportRead();
    return super.sequences;
  }

  @override
  set sequences(ObservableList<Sequence> value) {
    _$sequencesAtom.reportWrite(value, super.sequences, () {
      super.sequences = value;
    });
  }

  final _$edtTitleAtom = Atom(name: '_SequenceStoreBase.edtTitle');

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

  final _$edtDescriptionAtom = Atom(name: '_SequenceStoreBase.edtDescription');

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

  final _$edtDbmsAtom = Atom(name: '_SequenceStoreBase.edtDbms');

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

  final _$newSequenceAtom = Atom(name: '_SequenceStoreBase.newSequence');

  @override
  Sequence get newSequence {
    _$newSequenceAtom.reportRead();
    return super.newSequence;
  }

  @override
  set newSequence(Sequence value) {
    _$newSequenceAtom.reportWrite(value, super.newSequence, () {
      super.newSequence = value;
    });
  }

  final _$filesAtom = Atom(name: '_SequenceStoreBase.files');

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

  final _$readJsonFileAsyncAction =
      AsyncAction('_SequenceStoreBase.readJsonFile');

  @override
  Future<bool> readJsonFile() {
    return _$readJsonFileAsyncAction.run(() => super.readJsonFile());
  }

  final _$getFilesAsyncAction = AsyncAction('_SequenceStoreBase.getFiles');

  @override
  Future<bool> getFiles() {
    return _$getFilesAsyncAction.run(() => super.getFiles());
  }

  final _$_SequenceStoreBaseActionController =
      ActionController(name: '_SequenceStoreBase');

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_SequenceStoreBaseActionController.startAction(
        name: '_SequenceStoreBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_SequenceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_SequenceStoreBaseActionController.startAction(
        name: '_SequenceStoreBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_SequenceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sequences: ${sequences},
edtTitle: ${edtTitle},
edtDescription: ${edtDescription},
edtDbms: ${edtDbms},
newSequence: ${newSequence},
files: ${files}
    ''';
  }
}
