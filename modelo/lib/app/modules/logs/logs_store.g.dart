// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LogsStore on _LogsStoreBase, Store {
  final _$foldersAtom = Atom(name: '_LogsStoreBase.folders');

  @override
  List<FileSystemEntity> get folders {
    _$foldersAtom.reportRead();
    return super.folders;
  }

  @override
  set folders(List<FileSystemEntity> value) {
    _$foldersAtom.reportWrite(value, super.folders, () {
      super.folders = value;
    });
  }

  final _$folderListAtom = Atom(name: '_LogsStoreBase.folderList');

  @override
  List<String> get folderList {
    _$folderListAtom.reportRead();
    return super.folderList;
  }

  @override
  set folderList(List<String> value) {
    _$folderListAtom.reportWrite(value, super.folderList, () {
      super.folderList = value;
    });
  }

  final _$valueAtom = Atom(name: '_LogsStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$getFoldersAsyncAction = AsyncAction('_LogsStoreBase.getFolders');

  @override
  Future getFolders() {
    return _$getFoldersAsyncAction.run(() => super.getFolders());
  }

  final _$_LogsStoreBaseActionController =
      ActionController(name: '_LogsStoreBase');

  @override
  String getName(int index) {
    final _$actionInfo = _$_LogsStoreBaseActionController.startAction(
        name: '_LogsStoreBase.getName');
    try {
      return super.getName(index);
    } finally {
      _$_LogsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
folders: ${folders},
folderList: ${folderList},
value: ${value}
    ''';
  }
}
