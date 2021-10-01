import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.instance((i) => UserQuestionStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const UserQuestionPage()),
    ChildRoute('/:index/:action',
        child: (_, args) => UserQuestionDetail(
              index: args.params['index'],
              action: args.params['action'],
            )),
  ];
}
