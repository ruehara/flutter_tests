import 'package:analyzer_front/app/analyzer_library.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute(settingsInitialRoute, module: SettingsModule()),
  ];
}
