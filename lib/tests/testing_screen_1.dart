import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:flutter/material.dart';

class TestingScreen1 extends StatelessWidget {
  const TestingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String string = "Screen 1";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Text(string),
          ),
        ),
      ),
    );
  }
}
