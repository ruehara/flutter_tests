import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:analyzer_front/app/modules/connection/connection_module.dart';
import 'package:analyzer_front/app/modules/sequence/sequence_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => const SideMenu(), export: true),
    Bind.singleton((i) => SettingsStore(), export: true),
    Bind.singleton((i) => UserQuestionStore(), export: true),
    Bind.singleton((i) => SequenceStore(), export: true),
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
    ModuleRoute(
      userQuestionInitialRoute,
      module: UserQuestionModule(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 1000),
    ),
    ModuleRoute(
      questionInitialRoute,
      module: QuestionModule(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 1000),
    ),
    ModuleRoute(
      sequenceInitialRoute,
      module: SequenceModule(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 1000),
    ),
    ModuleRoute(
      connectionInitialRoute,
      module: ConnectionModule(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 1000),
    ),
  ];
}
