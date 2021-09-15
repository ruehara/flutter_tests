import 'package:flutter_modular/flutter_modular.dart';
import 'package:analyzer_front/app/modules/settings/settings_store.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, this.title = 'Settings Page'})
      : super(key: key);

  final String title;
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  final SettingsStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.readJsonFile().then((_) {
      store.initialization();
    });
  }

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
