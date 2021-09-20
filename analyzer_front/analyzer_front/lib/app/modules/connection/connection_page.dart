import 'package:analyzer_front/app/analyzer_library.dart';

class ConnectionPage extends StatefulWidget {
  final String title;
  const ConnectionPage({Key? key, this.title = 'ConnectionPage'})
      : super(key: key);
  @override
  ConnectionPageState createState() => ConnectionPageState();
}

class ConnectionPageState extends State<ConnectionPage> {
  final ConnectionStore store = Modular.get();

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
