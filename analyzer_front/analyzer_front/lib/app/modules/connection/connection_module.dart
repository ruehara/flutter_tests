import 'package:analyzer_front/app/analyzer_library.dart';

class ConnectionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ConnectionStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ConnectionPage()),
  ];
}
