import 'package:analyzer_front/app/analyzer_library.dart';

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => SettingsStore(), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SettingsPage()),
  ];
}
