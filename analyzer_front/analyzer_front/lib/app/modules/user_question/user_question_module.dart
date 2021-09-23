import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => UserQuestionStore()),
    Bind.lazySingleton((i) => SettingsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const UserQuestionPage()),
    ChildRoute('/:name/:action',
        child: (_, args) => UserQuestionDetail(
              fileName: args.params['name'],
              action: args.params['action'],
            )),
  ];
}
