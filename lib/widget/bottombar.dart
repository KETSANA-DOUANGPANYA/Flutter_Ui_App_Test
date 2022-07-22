/*
import 'package:app_diary/widget/home.dart';
import 'package:app_diary/widget/menu.dart';
import 'package:app_diary/widget/setting.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    new MenuFragment(),
    new HomeFragment(),
    new SettingFragment(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // final widgetTitle = ["Menu", "Home", "Setting"];
  // @override
  // Widget build(BuildContext context) {
  //   return BottomNavigationBar(
  //   items: <BottomNavigationBarItem>[
  //   BottomNavigationBarItem(
  //   icon: Icon(
  //   Icons.messenger,
  //   color: Colors.blue,
  //   ),
  //   label: "Chat"),
  //   BottomNavigationBarItem(
  //   icon: Icon(
  //   Icons.stacked_line_chart_outlined,
  //   color: Colors.blue,
  //   ),
  //   label: "Status"),
  //   BottomNavigationBarItem(
  //   icon: Icon(
  //   Icons.call,
  //   color: Colors.blue,
  //   ),
  //   label: "Call"),
  //   ],
//     currentIndex: selectedIndex,
//     fixedColor: Colors.red,
//     onTap: onItemTapped,
//     selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 20),
//     unselectedFontSize: 16,
//     selectedIconTheme:
//     IconThemeData(color: Colors.blue, opacity: 1.0, size: 30.0),
//     unselectedItemColor: Colors.black,
//     unselectedLabelStyle: TextStyle(fontSize: 18, color: Colors.pink),
//     );
//   }
// }
    // return Container(
    //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    //   height: 60,
    //   color: Colors.white,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 30,)),
    //       IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 30,)),
    //       IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 30,))
    //     ],
    //   ),
    // );
//   }
// }*/
