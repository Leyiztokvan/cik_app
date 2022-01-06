import 'package:flutter/material.dart';

const double icon3Size = 40;
const double icon4Size = 40;

class XCardComponents {
  XCardComponents({
    required this.title,
    required this.secondaryText,
    required this.tertiaryText,
    required this.price,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.icon4,
    required this.imageData,
    required this.tabTitle,
    required this.tabsecondaryText1,
    required this.tabsecondaryText2,
    required this.tabsecondaryText3,
    required this.tabsecondaryText4,
    required this.tabsecondaryText5,
    required this.tabsecondaryText6,
    required this.tabtertiaryText1,
    required this.tabtertiaryText2,
    required this.tabtertiaryText3,
    required this.tabtertiaryText4,
    required this.tabtertiaryText5,
    required this.tabtertiaryText6,
  });

  final icon1;
  final icon2;
  final icon3;
  final icon4;
  final AssetImage imageData;
  final String price;
  final String secondaryText;
  final String tertiaryText;
  final String title;

  final String tabTitle;
  final String tabsecondaryText1;
  final String tabsecondaryText2;
  final String tabsecondaryText3;
  final String tabsecondaryText4;
  final String tabsecondaryText5;
  final String tabsecondaryText6;
  final String tabtertiaryText1;
  final String tabtertiaryText2;
  final String tabtertiaryText3;
  final String tabtertiaryText4;
  final String tabtertiaryText5;
  final String tabtertiaryText6;
}

class XXCardComponents {
  XXCardComponents(this.title, this.info);

  XXCardComponents.clone(XXCardComponents xCardComponents)
      : this(xCardComponents.title, xCardComponents.info);

  String info;
  String title;
}
