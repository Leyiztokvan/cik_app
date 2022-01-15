import 'package:app_vorlage_prototyp/screens/profile/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: BodyProfile()));
  }
}
