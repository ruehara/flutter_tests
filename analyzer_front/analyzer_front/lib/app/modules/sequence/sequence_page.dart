import 'package:analyzer_front/app/analyzer_library.dart';

class SequencePage extends StatefulWidget {
  final String title;
  const SequencePage({Key? key, this.title = 'SequencePage'}) : super(key: key);
  @override
  SequencePageState createState() => SequencePageState();
}

class SequencePageState extends State<SequencePage> {
  final SequenceStore store = Modular.get();

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
