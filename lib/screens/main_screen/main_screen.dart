import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 1;
  final screens = [
    // DiscoverScreen(),
    HomepageScreen(),
    // //LibraryScreen(),
    // ProfileScreen(),
    // SettingsScreen(),
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
            //selectedItemColor: Colors.black,
            //unselectedItemColor: Colors.white,
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
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              // BottomNavigationBarItem(
              //   icon: Icon( Icons.photo_library)),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.search),
              // ),
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
        body: 
        IndexedStack(index: currentIndex, children: screens)
        );
  }
}
