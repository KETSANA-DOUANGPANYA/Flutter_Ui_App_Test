import 'package:app_diary/widget/bottombar.dart';
import 'package:app_diary/widget/home.dart';
import 'package:app_diary/widget/menu.dart';
import 'package:app_diary/widget/setting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  List widgetOptions = [
     MenuFragment(),
     HomeFragment(),
     SettingFragment(),
  ];

  //State tab when action bottom bar
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  // final widgetTitle = ["Menu", "Home", "Setting"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              label: "Setting"),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.orange,
        onTap: onItemTapped,
        selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 20),
        unselectedFontSize: 15,
        selectedIconTheme:
            IconThemeData(size: 30.0),
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}






// unselectedLabelStyle: TextStyle(fontSize: 18, color: Colors.pink),
// @override
// Widget build(BuildContext context) {
//   var size = MediaQuery.of(context)
//       .size; //this gonna give us total height and with of our device
//   return Scaffold(
//     bottomNavigationBar: BottomBar(),
//     body: widgetOptions.elementAt(selectedIndex),
//   );
// }
