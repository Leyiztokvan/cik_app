import 'package:flutter/material.dart';

class TestingScreen2 extends StatelessWidget {
  const TestingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String string = "Screen 2";
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
