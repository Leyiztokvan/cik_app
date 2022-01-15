import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/discover/discover_screen.dart';
import 'package:app_vorlage_prototyp/screens/home/home_screen.dart';
import 'package:app_vorlage_prototyp/screens/profile/profile_screen.dart';
import 'package:app_vorlage_prototyp/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

const double bottomNaviagtionBarHeight = 55;

class XNavigationBar extends StatefulWidget {
  const XNavigationBar({Key? key}) : super(key: key);

  @override
  _XNavigationBarState createState() => _XNavigationBarState();
}

class _XNavigationBarState extends State<XNavigationBar> {
  int currentIndex = 1;
  final List<Widget> screens = [
    const DiscoverScreen(),
    const HomepageScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(rSecondaryRadius),
                topRight: Radius.circular(rSecondaryRadius),
              ),
            ),
            height: bottomNaviagtionBarHeight,
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(rSecondaryRadius),
                topRight: Radius.circular(rSecondaryRadius),
              ),
              child: BottomNavigationBar(
                // fixedColor: Theme.of(context).colorScheme.primary,
                elevation: ePrimary,
                currentIndex: currentIndex,
                onTap: (index) => setState(() => currentIndex = index),
                // backgroundColor: Theme.of(context).colorScheme.primary,
                unselectedIconTheme: const IconThemeData(
                  color: cWhite,
                  opacity: 80,
                  size: 20,
                ),
                selectedIconTheme: const IconThemeData(
                  color: cBlack,
                  opacity: 100,
                  size: 24,
                ),
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.shifting,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(iconSearch),
                    label: "Search",
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(iconHomeFilled),
                    label: "Home",
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(iconPersonFilled),
                    label: "Profile",
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(iconSettings),
                    label: "Setting",
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ),
          body: IndexedStack(index: currentIndex, children: screens)),
    );
  }
}
