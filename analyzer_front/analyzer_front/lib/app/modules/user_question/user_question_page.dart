import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionPage extends StatefulWidget {
  final String title;
  const UserQuestionPage({Key? key, this.title = 'UserQuestionPage'})
      : super(key: key);
  @override
  UserQuestionPageState createState() => UserQuestionPageState();
}

class UserQuestionPageState extends State<UserQuestionPage> {
  final UserQuestionStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
