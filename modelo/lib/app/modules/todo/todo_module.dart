import 'package:teste1/app/modules/todo/todo_Page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TodoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const TodoPage()),
  ];
}
