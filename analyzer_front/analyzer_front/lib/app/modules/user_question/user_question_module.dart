import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserQuestionStore()),
    Bind.lazySingleton((i) => SettingsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const UserQuestionPage()),
  ];
}
