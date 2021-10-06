import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => UserQuestionStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const UserQuestionPage()),
    ChildRoute(
      '/:action/:index',
      child: (_, args) => UserQuestionDetail(
        action: args.params['action'],
        index: args.params['index'],
      ),
    ),
    ChildRoute(
      '/:action',
      child: (_, args) => UserQuestionDetail(
        action: args.params['action'],
      ),
    ),
  ];
}
