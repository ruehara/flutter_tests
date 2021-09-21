import 'package:analyzer_front/app/analyzer_library.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);
  @override
  SideMenuState createState() => SideMenuState();
  void setSelected(int index) {
    selectedIndex = index;
  }
}

int selectedIndex = 0;

class SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });

                Modular.to.navigate(Modular.initialRoute);
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.list),
              title: const Text('Questions'),
              selected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                //Modular.to.navigate(settingsInitialRoute);
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.list),
              title: const Text('User Questions'),
              selected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                Modular.to.navigate(userQuestionInitialRoute);
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.schema),
              title: const Text('Sequences'),
              selected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });

                //Modular.to.navigate('/settings');
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              selected: selectedIndex == 4,
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                //Modular.to.navigate('/todo');
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              selected: selectedIndex == 5,
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
                Modular.to.navigate(settingsInitialRoute);
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.storage),
              title: const Text('Connection'),
              selected: selectedIndex == 6,
              onTap: () {
                setState(() {
                  selectedIndex = 6;
                });
                Modular.to.navigate(settingsInitialRoute);
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.note),
              title: const Text('Logs'),
              selected: selectedIndex == 7,
              onTap: () {
                setState(() {
                  selectedIndex = 7;
                });
                Modular.to.navigate(logsInitialRoute);
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.credit_score),
              title: const Text('Credits'),
              selected: selectedIndex == 8,
              onTap: () {
                setState(() {
                  selectedIndex = 8;
                });
                Modular.to.navigate(creditsInitialRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
