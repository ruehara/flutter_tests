import 'package:analyzer_front/app/analyzer_library.dart';

class QuestionPage extends StatefulWidget {
  final String title;
  const QuestionPage({Key? key, this.title = 'QuestionPage'}) : super(key: key);
  @override
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State<QuestionPage> {
  final QuestionStore store = Modular.get();

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
