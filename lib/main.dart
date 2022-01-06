import 'package:app_vorlage_prototyp/navigation.dart';
import 'package:app_vorlage_prototyp/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
// import 'TESTs/testing_screen.dart';
import 'config/themes/theme.dart';
import 'screens/authentication/authentication_screen.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final bool _isDark = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/testing',
      initialRoute: '/nav',
      routes: {
        '/main': (context) => MainScreen(),
        '/nav': (context) => XNavigationBar(),
        // '/testing': (context) => TestHomeBody(),
        // '/': (context) => LoadingScreen(),
        // '/welcome': (context) => WelcomeScreen(),
        '/home': (context) => HomepageScreen(),
        '/authentfication': (context) => const AuthenticationScreen(),
        // '/profile': (context) => ProfileScreen(),
        // '/settings': (context) => SettingsScreen(),
        // '/discover': (context) => DiscoverScreen(),
      },
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
