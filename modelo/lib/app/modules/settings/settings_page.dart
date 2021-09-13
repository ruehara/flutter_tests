import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/settings/settings_store.dart';
import 'package:flutter/material.dart';
import 'package:teste1/app/widgets/side_bar.dart';

class SettingsPage extends StatefulWidget {
  final String title;
  const SettingsPage({Key? key, this.title = 'SettingsPage'}) : super(key: key);
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  final SettingsStore store = Modular.get();
  final SideMenu sideMenu = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          sideMenu,
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('Pagina 2'),
            ),
          )
        ],
      ),
    );
  }
}
