import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/widgets/database_status.dart';
import 'package:teste1/app/widgets/side_bar.dart';

import 'modules/home/home_module.dart';
import 'modules/logs/logs_module.dart';
import 'modules/question/question_module.dart';
import 'modules/settings/settings_module.dart';
import 'modules/todo/todo_module.dart';
import 'modules/todo/todo_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => const SideMenu(), export: true),
    Bind.singleton((i) => TodoStore(), export: true),
    Bind.factory((i) => const DataBaseStatus(), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      Modular.initialRoute,
      module: HomeModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/settings',
      module: SettingsModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/todo',
      module: TodoModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/logs/',
      module: LogsModule(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/questions/',
      module: QuestionModule(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
