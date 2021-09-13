// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Todo on _Todo, Store {
  final _$nameAtom = Atom(name: '_Todo.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_Todo.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_Todo.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_TodoActionController = ActionController(name: '_Todo');

  @override
  void setUsername(String value) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.toJson');
    try {
      return super.toJson();
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
password: ${password}
    ''';
  }
}
