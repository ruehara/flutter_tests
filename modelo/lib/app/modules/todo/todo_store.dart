import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:teste1/app/modules/todo/todo_model.dart';

part 'todo_store.g.dart';

class TodoStore = _TodoStoreBase with _$TodoStore;

abstract class _TodoStoreBase with Store {
  @observable
  Todo todo = Todo();

  @observable
  var edtname = TextEditingController();

  @observable
  var edtemail = TextEditingController();

  @observable
  var edtpass = TextEditingController();

  @action
  Future<bool> readJson() async {
    try {
      File file = File('${Directory.current.path}/todo.json');
      var string = await file.readAsString();
      Map<String, dynamic> settingsMap = await jsonDecode(string.toString());
      todo = Todo.fromJson(settingsMap);
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @action
  Future<void> saveJsonFile() async {
    var data = todo.toJson();
    final File file = File('${Directory.current.path}/todo.json');
    await file.writeAsString(jsonEncode(data));
  }

  setDefaults() {
    todo.setUsername('José');
    todo.setEmail('email@gmail.com');
    todo.setPassword('12345');
    initiatePage();
  }

  initiatePage() {
    edtname.text = todo.name;
    edtemail.text = todo.email;
    edtpass.text = todo.password;
  }
}
