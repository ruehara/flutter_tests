import 'package:analyzer_front/app/analyzer_library.dart';

abstract class CustomPage extends StatefulWidget {
  final String title;
  final Widget bodyPage;
  const CustomPage({
    Key? key,
    required this.title,
    required this.bodyPage,
  }) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<CustomPage> {
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();

  @override
  void initState() {
    super.initState();
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
              SliverAppBar(
                title: Text(widget.title),
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
                    builder: (context) => Center(child: widget.bodyPage),
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
