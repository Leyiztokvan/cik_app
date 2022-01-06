import 'package:flutter/material.dart';

class TestingScreen3 extends StatelessWidget {
  const TestingScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String string = "Screen 3";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
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
