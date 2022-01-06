import 'package:flutter/material.dart';

class XSettingTileComponents {
  XSettingTileComponents({
    required this.leading,
    required this.title,
    required this.trailing,
  });

  final Icon leading;
  final String title;
  final Icon trailing;
}

class Title {
  Title({required this.title});
  final String title;
}
