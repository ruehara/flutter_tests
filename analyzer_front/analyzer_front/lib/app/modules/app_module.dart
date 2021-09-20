import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:analyzer_front/app/modules/logs/logs_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => const SideMenu(), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      Modular.initialRoute,
      module: HomeModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      settingsInitialRoute,
      module: SettingsModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      creditsInitialRoute,
      module: CreditsModule(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 1000),
    ),
    ModuleRoute(
      logsInitialRoute,
      module: LogsModule(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 1000),
    ),
  ];
}
