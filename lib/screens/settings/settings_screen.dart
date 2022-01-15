import 'package:app_vorlage_prototyp/screens/settings/settings_body.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(resizeToAvoidBottomInset: false, body: SettingsBody()));
  }
}
