import 'package:app_vorlage_prototyp/TESTs/Profile/profile_screen.dart';
import 'package:app_vorlage_prototyp/TESTs/Setting/settings_screen.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/authentication/authentication_screen.dart';
import 'package:app_vorlage_prototyp/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class XNavigationBar extends StatefulWidget {
  const XNavigationBar({Key? key}) : super(key: key);

  @override
  _XNavigationBarState createState() => _XNavigationBarState();
}

class _XNavigationBarState extends State<XNavigationBar> {
  int currentIndex = 2;
  final screens = [
    AuthenticationScreen(),
    HomepageScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 54,
          alignment: Alignment.bottomCenter,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            backgroundColor: cPrimaryColor,
            unselectedIconTheme: IconThemeData(
              color: Colors.white70,
              opacity: 80,
              size: 20,
            ),
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              opacity: 100,
              size: 24,
            ),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
              ),
            ],
          ),
        ),
        body: IndexedStack(index: currentIndex, children: screens));
  }
}
