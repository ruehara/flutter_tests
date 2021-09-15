import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/question/question_store.dart';
import 'package:flutter/material.dart';

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
        children: <Widget>[
          TextButton(
            onPressed: () {
              store.start();
            },
            child: const Text('Start'),
          )
        ],
      ),
    );
  }
}
