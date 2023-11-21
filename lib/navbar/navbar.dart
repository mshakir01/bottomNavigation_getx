import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/controller.dart';
import 'package:getx_practice/pages/chart.dart';
import 'package:getx_practice/pages/home.dart';
import 'package:getx_practice/pages/note.dart';
import 'package:getx_practice/pages/setting.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context){
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomeScreen(),
            NoteScreen(),
            ChartScreen(),
            SettingScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.green,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
_bottombarItem(Icons.abc, "Home"),
_bottombarItem(Icons.abc, "Note"),
_bottombarItem(Icons.abc, "Chart"),
_bottombarItem(Icons.abc, "Setting"),
        ],),
      );
    });
  }
}

_bottombarItem(IconData icon,String label){
  return BottomNavigationBarItem(icon: Icon(icon),label: label);

}