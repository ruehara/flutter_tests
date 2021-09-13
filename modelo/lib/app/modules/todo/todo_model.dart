import 'package:mobx/mobx.dart';
part 'todo_model.g.dart';

class Todo = _Todo with _$Todo;

abstract class _Todo with Store {
  _Todo();

  @observable
  String name = "";

  @observable
  String email = "";

  @observable
  String password = "";

  @action
  void setUsername(String value) {
    name = value;
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  _Todo.fromJson(Map<String, dynamic> json) {
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
