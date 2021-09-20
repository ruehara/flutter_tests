import 'package:analyzer_front/app/analyzer_library.dart';

class ReportPage extends StatefulWidget {
  final String title;
  const ReportPage({Key? key, this.title = 'ReportPage'}) : super(key: key);
  @override
  ReportPageState createState() => ReportPageState();
}

class ReportPageState extends State<ReportPage> {
  final ReportStore store = Modular.get();

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
