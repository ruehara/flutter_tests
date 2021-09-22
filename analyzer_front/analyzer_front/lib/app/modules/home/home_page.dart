import 'package:analyzer_front/app/analyzer_library.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  final SideMenu sideMenu = Modular.get();
  final SettingsStore settingsStore = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();

  @override
  void initState() {
    super.initState();
    settingsStore.readJsonFile().then(
          (_) => setState(() {
            settingsStore.initialization();
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: scroll,
        child: NestedScrollView(
          controller: ScrollController(initialScrollOffset: 200 - 56),
          headerSliverBuilder: (
            BuildContext context,
            bool condition,
          ) {
            return [
              const SliverAppBar(
                forceElevated: true,
                pinned: true,
                floating: true,
                expandedHeight: 200,
              ),
            ];
          },
          body: ScrollConfiguration(
            behavior: scroll,
            child: Row(
              children: [
                sideMenu,
                Expanded(
                  flex: 1,
                  child: Observer(
                    builder: (context) => const Center(
                      child: Text('teste'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
