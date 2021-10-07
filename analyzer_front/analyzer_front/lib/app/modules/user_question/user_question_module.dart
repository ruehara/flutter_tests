import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:analyzer_front/app/modules/user_question/user_question_sql.dart';

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
    ChildRoute(
      '/:sql/:index',
      child: (_, args) => UserQuestionSql(
        action: args.params['sql'],
        index: args.params['index'],
      ),
    ),
  ];
}
