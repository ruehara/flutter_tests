import 'package:analyzer_front/app/analyzer_library.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, this.title = 'Settings Page'})
      : super(key: key);

  final String title;
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  final SettingsStore store = Modular.get();
  final SideMenu sideMenu = Modular.get();
  @override
  void initState() {
    super.initState();
    store.readJsonFile().then(
          (_) => setState(() {
            store.initialization();
          }),
        );
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
            Expanded(
              flex: 1,
              child: Observer(
                builder: (context) => const Center(
                  child: Text('steeings'),
                ),
              ),
            ),
          ],
        ));
  }
}
