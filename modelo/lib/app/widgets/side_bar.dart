import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/widgets/database_status.dart';

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
  DataBaseStatus dataBaseStatus = Modular.get();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: Column(
          children: [
            dataBaseStatus,
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
              leading: const Icon(Icons.dashboard),
              title: const Text('Settings'),
              selected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });

                Modular.to.navigate('/settings');
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.dashboard),
              title: const Text('Settings'),
              selected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });

                Modular.to.navigate('/settings');
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.work),
              title: const Text('Todo'),
              selected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
                Modular.to.navigate('/todo');
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.note),
              title: const Text('Logs'),
              selected: selectedIndex == 4,
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                Modular.to.navigate('/logs');
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              leading: const Icon(Icons.category),
              title: const Text('Question'),
              selected: selectedIndex == 5,
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
                Modular.to.navigate('/questions');
              },
            ),
          ],
        ),
      ),
    );
  }
}
