import 'package:app_vorlage_prototyp/components/bottom_navigation_bar.dart';
import 'package:app_vorlage_prototyp/screens/discover/discover_screen.dart';
import 'package:app_vorlage_prototyp/screens/main_screen/main_screen.dart';
import 'package:app_vorlage_prototyp/screens/profile/profile_screen.dart';
import 'package:app_vorlage_prototyp/screens/settings/settings_screen.dart';
import 'package:app_vorlage_prototyp/screens/splash/splash_screen.dart';
import 'package:app_vorlage_prototyp/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/authentication',
      routes: {
        '/main': (context) => const MainScreen(),
        '/splash': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/authentication': (context) => const AuthenticationScreen(),
        '/nav': (context) => const XNavigationBar(),
        '/discover': (context) => const DiscoverScreen(),
        '/home': (context) => const HomepageScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
