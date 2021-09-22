import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionPage extends StatefulWidget {
  final String title;
  const UserQuestionPage({Key? key, this.title = "User Question Page"})
      : super(key: key);

  @override
  _UserQuestionState createState() => _UserQuestionState();
}

class _UserQuestionState
    extends ModularState<UserQuestionPage, UserQuestionStore> {
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
  @override
  void initState() {
    super.initState();
    store.readJsonFile().then(
          (_) => setState(() {}),
        );
    store.getFiles();
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
                    builder: (context) => Center(
                      child: ListView.builder(
                        itemCount: store.files.length,
                        itemBuilder: (_, i) => Text(store.files.elementAt(i)),
                      ),
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
