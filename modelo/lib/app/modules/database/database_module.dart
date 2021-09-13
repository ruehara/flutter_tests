import 'package:teste1/app/modules/database/database_Page.dart';
import 'package:teste1/app/modules/database/database_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DatabaseModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DatabaseStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const DatabasePage()),
  ];
}
