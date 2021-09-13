import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/logs/logs_store.dart';
import 'package:flutter/material.dart';
import 'package:teste1/app/widgets/side_bar.dart';

class LogsDetailPage extends StatefulWidget {
  final String title;
  const LogsDetailPage({Key? key, this.title = 'LogsPage', id})
      : super(key: key);
  @override
  LogsDetailPageState createState() => LogsDetailPageState();
}

class LogsDetailPageState extends State<LogsDetailPage> {
  final LogsStore store = Modular.get();
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
          Observer(
            builder: (_) => const Expanded(
              child: Center(
                child: Text('Teste'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
