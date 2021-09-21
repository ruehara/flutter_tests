import 'package:analyzer_front/app/analyzer_library.dart';

class UserQuestionPage extends StatefulWidget {
  final String title;
  const UserQuestionPage({Key? key, this.title = "User Question Page"})
      : super(key: key);

  @override
  _UserQuestionState createState() => _UserQuestionState();
}

class _UserQuestionState extends ModularState<UserQuestionPage, HomeStore> {
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();
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
