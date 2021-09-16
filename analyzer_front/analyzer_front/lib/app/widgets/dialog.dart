import 'package:analyzer_front/app/analyzer_library.dart';

class Dialogs {
  late BuildContext _context;
  late bool _goToHome;
  Dialogs({required BuildContext context, required bool goToHome}) {
    _context = context;
    _goToHome = goToHome;
  }
  showAlertDialog() async {
    SideMenu sideMenu = Modular.get();

    return await showDialog(
        context: _context,
        builder: (BuildContext _context) {
          return AlertDialog(
            title: const Text("Alert!"),
            content: const Text("Save changes?"),
            actions: [
              TextButton(
                child: const Text("Cancel"),
                onPressed: () {
                  Navigator.of(_context).pop(false);
                },
              ),
              TextButton(
                child: const Text("Confirm"),
                onPressed: () {
                  Navigator.of(_context).pop(true);
                  if (_goToHome) {
                    sideMenu.setSelected(0);
                    Modular.to.navigate(Modular.initialRoute);
                  }
                },
              )
            ],
          );
        });
  }
}
