import 'package:teste1/app/modules/logs/logs_detail_page.dart';
import 'package:teste1/app/modules/logs/logs_index_page.dart';
import 'package:teste1/app/modules/logs/logs_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LogsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LogsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LogsIndexPage()),
    ChildRoute(
      '/logs/:id',
      child: (_, args) => LogsDetailPage(id: args.params['id']),
    ),
  ];
}
