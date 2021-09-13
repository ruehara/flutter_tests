import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/database/database_store.dart';
import 'package:flutter/material.dart';

class DatabasePage extends StatefulWidget {
  final String title;
  const DatabasePage({Key? key, this.title = 'DatabasePage'}) : super(key: key);
  @override
  DatabasePageState createState() => DatabasePageState();
}
class DatabasePageState extends State<DatabasePage> {
  final DatabaseStore store = Modular.get();

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