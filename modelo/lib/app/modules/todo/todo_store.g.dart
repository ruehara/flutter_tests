// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on _TodoStoreBase, Store {
  final _$todoAtom = Atom(name: '_TodoStoreBase.todo');

  @override
  Todo get todo {
    _$todoAtom.reportRead();
    return super.todo;
  }

  @override
  set todo(Todo value) {
    _$todoAtom.reportWrite(value, super.todo, () {
      super.todo = value;
    });
  }

  final _$edtnameAtom = Atom(name: '_TodoStoreBase.edtname');

  @override
  TextEditingController get edtname {
    _$edtnameAtom.reportRead();
    return super.edtname;
  }

  @override
  set edtname(TextEditingController value) {
    _$edtnameAtom.reportWrite(value, super.edtname, () {
      super.edtname = value;
    });
  }

  final _$edtemailAtom = Atom(name: '_TodoStoreBase.edtemail');

  @override
  TextEditingController get edtemail {
    _$edtemailAtom.reportRead();
    return super.edtemail;
  }

  @override
  set edtemail(TextEditingController value) {
    _$edtemailAtom.reportWrite(value, super.edtemail, () {
      super.edtemail = value;
    });
  }

  final _$edtpassAtom = Atom(name: '_TodoStoreBase.edtpass');

  @override
  TextEditingController get edtpass {
    _$edtpassAtom.reportRead();
    return super.edtpass;
  }

  @override
  set edtpass(TextEditingController value) {
    _$edtpassAtom.reportWrite(value, super.edtpass, () {
      super.edtpass = value;
    });
  }

  final _$readJsonAsyncAction = AsyncAction('_TodoStoreBase.readJson');

  @override
  Future<bool> readJson() {
    return _$readJsonAsyncAction.run(() => super.readJson());
  }

  final _$saveJsonFileAsyncAction = AsyncAction('_TodoStoreBase.saveJsonFile');

  @override
  Future<void> saveJsonFile() {
    return _$saveJsonFileAsyncAction.run(() => super.saveJsonFile());
  }

  @override
  String toString() {
    return '''
todo: ${todo},
edtname: ${edtname},
edtemail: ${edtemail},
edtpass: ${edtpass}
    ''';
  }
}
