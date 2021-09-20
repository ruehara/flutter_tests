import 'package:analyzer_front/app/analyzer_library.dart';

class LogsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LogsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LogsPage()),
  ];
}
