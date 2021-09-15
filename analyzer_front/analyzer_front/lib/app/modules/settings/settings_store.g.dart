// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsStore on _SettingsStoreBase, Store {
  final _$settingsAtom = Atom(name: '_SettingsStoreBase.settings');

  @override
  Settings get settings {
    _$settingsAtom.reportRead();
    return super.settings;
  }

  @override
  set settings(Settings value) {
    _$settingsAtom.reportWrite(value, super.settings, () {
      super.settings = value;
    });
  }

  final _$edtQuestionDirectoryAtom =
      Atom(name: '_SettingsStoreBase.edtQuestionDirectory');

  @override
  TextEditingController get edtQuestionDirectory {
    _$edtQuestionDirectoryAtom.reportRead();
    return super.edtQuestionDirectory;
  }

  @override
  set edtQuestionDirectory(TextEditingController value) {
    _$edtQuestionDirectoryAtom.reportWrite(value, super.edtQuestionDirectory,
        () {
      super.edtQuestionDirectory = value;
    });
  }

  final _$edtUserQuestionDirectoryAtom =
      Atom(name: '_SettingsStoreBase.edtUserQuestionDirectory');

  @override
  TextEditingController get edtUserQuestionDirectory {
    _$edtUserQuestionDirectoryAtom.reportRead();
    return super.edtUserQuestionDirectory;
  }

  @override
  set edtUserQuestionDirectory(TextEditingController value) {
    _$edtUserQuestionDirectoryAtom
        .reportWrite(value, super.edtUserQuestionDirectory, () {
      super.edtUserQuestionDirectory = value;
    });
  }

  final _$edtSequenceDirectoryAtom =
      Atom(name: '_SettingsStoreBase.edtSequenceDirectory');

  @override
  TextEditingController get edtSequenceDirectory {
    _$edtSequenceDirectoryAtom.reportRead();
    return super.edtSequenceDirectory;
  }

  @override
  set edtSequenceDirectory(TextEditingController value) {
    _$edtSequenceDirectoryAtom.reportWrite(value, super.edtSequenceDirectory,
        () {
      super.edtSequenceDirectory = value;
    });
  }

  final _$edtReportDirectoryAtom =
      Atom(name: '_SettingsStoreBase.edtReportDirectory');

  @override
  TextEditingController get edtReportDirectory {
    _$edtReportDirectoryAtom.reportRead();
    return super.edtReportDirectory;
  }

  @override
  set edtReportDirectory(TextEditingController value) {
    _$edtReportDirectoryAtom.reportWrite(value, super.edtReportDirectory, () {
      super.edtReportDirectory = value;
    });
  }

  final _$edtLogDirectoryAtom =
      Atom(name: '_SettingsStoreBase.edtLogDirectory');

  @override
  TextEditingController get edtLogDirectory {
    _$edtLogDirectoryAtom.reportRead();
    return super.edtLogDirectory;
  }

  @override
  set edtLogDirectory(TextEditingController value) {
    _$edtLogDirectoryAtom.reportWrite(value, super.edtLogDirectory, () {
      super.edtLogDirectory = value;
    });
  }

  final _$edtLogFileNameAtom = Atom(name: '_SettingsStoreBase.edtLogFileName');

  @override
  TextEditingController get edtLogFileName {
    _$edtLogFileNameAtom.reportRead();
    return super.edtLogFileName;
  }

  @override
  set edtLogFileName(TextEditingController value) {
    _$edtLogFileNameAtom.reportWrite(value, super.edtLogFileName, () {
      super.edtLogFileName = value;
    });
  }

  final _$edtFirebirdPrefixAtom =
      Atom(name: '_SettingsStoreBase.edtFirebirdPrefix');

  @override
  TextEditingController get edtFirebirdPrefix {
    _$edtFirebirdPrefixAtom.reportRead();
    return super.edtFirebirdPrefix;
  }

  @override
  set edtFirebirdPrefix(TextEditingController value) {
    _$edtFirebirdPrefixAtom.reportWrite(value, super.edtFirebirdPrefix, () {
      super.edtFirebirdPrefix = value;
    });
  }

  final _$edtSqlServerPrefixAtom =
      Atom(name: '_SettingsStoreBase.edtSqlServerPrefix');

  @override
  TextEditingController get edtSqlServerPrefix {
    _$edtSqlServerPrefixAtom.reportRead();
    return super.edtSqlServerPrefix;
  }

  @override
  set edtSqlServerPrefix(TextEditingController value) {
    _$edtSqlServerPrefixAtom.reportWrite(value, super.edtSqlServerPrefix, () {
      super.edtSqlServerPrefix = value;
    });
  }

  final _$edtOraclePrefixAtom =
      Atom(name: '_SettingsStoreBase.edtOraclePrefix');

  @override
  TextEditingController get edtOraclePrefix {
    _$edtOraclePrefixAtom.reportRead();
    return super.edtOraclePrefix;
  }

  @override
  set edtOraclePrefix(TextEditingController value) {
    _$edtOraclePrefixAtom.reportWrite(value, super.edtOraclePrefix, () {
      super.edtOraclePrefix = value;
    });
  }

  final _$edtSqLitePrefixAtom =
      Atom(name: '_SettingsStoreBase.edtSqLitePrefix');

  @override
  TextEditingController get edtSqLitePrefix {
    _$edtSqLitePrefixAtom.reportRead();
    return super.edtSqLitePrefix;
  }

  @override
  set edtSqLitePrefix(TextEditingController value) {
    _$edtSqLitePrefixAtom.reportWrite(value, super.edtSqLitePrefix, () {
      super.edtSqLitePrefix = value;
    });
  }

  final _$readJsonFileAsyncAction =
      AsyncAction('_SettingsStoreBase.readJsonFile');

  @override
  Future<bool> readJsonFile() {
    return _$readJsonFileAsyncAction.run(() => super.readJsonFile());
  }

  final _$createJsonFileAsyncAction =
      AsyncAction('_SettingsStoreBase.createJsonFile');

  @override
  Future<bool> createJsonFile() {
    return _$createJsonFileAsyncAction.run(() => super.createJsonFile());
  }

  final _$saveJsonFileAsyncAction =
      AsyncAction('_SettingsStoreBase.saveJsonFile');

  @override
  Future<bool> saveJsonFile() {
    return _$saveJsonFileAsyncAction.run(() => super.saveJsonFile());
  }

  final _$_SettingsStoreBaseActionController =
      ActionController(name: '_SettingsStoreBase');

  @override
  void setDefaults() {
    final _$actionInfo = _$_SettingsStoreBaseActionController.startAction(
        name: '_SettingsStoreBase.setDefaults');
    try {
      return super.setDefaults();
    } finally {
      _$_SettingsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initialization() {
    final _$actionInfo = _$_SettingsStoreBaseActionController.startAction(
        name: '_SettingsStoreBase.initialization');
    try {
      return super.initialization();
    } finally {
      _$_SettingsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
settings: ${settings},
edtQuestionDirectory: ${edtQuestionDirectory},
edtUserQuestionDirectory: ${edtUserQuestionDirectory},
edtSequenceDirectory: ${edtSequenceDirectory},
edtReportDirectory: ${edtReportDirectory},
edtLogDirectory: ${edtLogDirectory},
edtLogFileName: ${edtLogFileName},
edtFirebirdPrefix: ${edtFirebirdPrefix},
edtSqlServerPrefix: ${edtSqlServerPrefix},
edtOraclePrefix: ${edtOraclePrefix},
edtSqLitePrefix: ${edtSqLitePrefix}
    ''';
  }
}
