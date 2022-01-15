import 'package:flutter/material.dart';

// /XCAPITALTEXT: TEXT_WITH_CAPITAL_LETTERS
class XCapitalText extends StatelessWidget {
  final String text;
  const XCapitalText({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase());
  }
}
