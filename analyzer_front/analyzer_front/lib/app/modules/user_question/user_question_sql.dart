import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionSql extends StatefulWidget {
  final String index;
  final String action;
  const UserQuestionSql({Key? key, required this.index, required this.action})
      : super(key: key);

  @override
  _UserQuestionSqlState createState() => _UserQuestionSqlState();
}

class _UserQuestionSqlState extends State<UserQuestionSql> {
  final UserQuestionStore store = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
