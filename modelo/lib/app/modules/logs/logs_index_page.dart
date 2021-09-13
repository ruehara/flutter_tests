import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/logs/logs_store.dart';
import 'package:flutter/material.dart';
import 'package:teste1/app/widgets/side_bar.dart';

class LogsIndexPage extends StatefulWidget {
  final String title;
  const LogsIndexPage({Key? key, this.title = 'LogsPage'}) : super(key: key);
  @override
  LogsIndexPageState createState() => LogsIndexPageState();
}

class LogsIndexPageState extends State<LogsIndexPage> {
  final LogsStore store = Modular.get();
  final SideMenu sideMenu = Modular.get();
  @override
  void initState() {
    store.getFolders();
    super.initState();
  }

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
            builder: (_) => Expanded(
                child: ListView.builder(
              itemCount: store.folders.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(store.folders[index].toString()),
                    onTap: () {
                      var teste = store.getName(index);
                      print(teste);
                      Modular.to.navigate('/logs/1');
                    });
              },
            )),
          ),
        ],
      ),
    );
  }
}
