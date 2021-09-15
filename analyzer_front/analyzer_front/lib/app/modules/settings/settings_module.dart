import 'package:analyzer_front/app/modules/settings/settings_Page.dart';
import 'package:analyzer_front/app/modules/settings/settings_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SettingsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SettingsPage()),
  ];
}
