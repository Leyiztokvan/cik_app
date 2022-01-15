import 'package:app_vorlage_prototyp/config/modules/tiles/class_settings_tile_components.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:flutter/material.dart';

final List<String> xlistTileTitles = [
  "Account",
  "Favourite",
  "Payment",
  "Notification",
  "???"
];

final List<Icon> xlistTileIcons = [
  Icon(iconPersonOutlined),
  Icon(iconFavoriteOutlined),
  Icon(iconCreditCardOutlined),
  Icon(iconMessageFilled),
  Icon(iconInfoOutlined),
];

final List xlistTileTrailings = [
  Icon(iconForwardArrow),
  Icon(iconForwardArrow),
  Icon(iconForwardArrow),
  Icon(iconForwardArrow),
  Icon(iconForwardArrow),
];

final List xsettingTileComponentsList = [
  XSettingTileComponents(
    leading: Icon(iconLanguageGlobeOutlined),
    title: "Language",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconLightModeOutlined),
    title: "Appearance",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconMessageFilled),
    title: "Notification",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconPlaceOutlined),
    title: "Location",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconContactSupportOutlined),
    title: "Support",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
  XSettingTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    trailing: Icon(iconForwardArrow),
  ),
];



// TODO: This doesn't work
// void addListTiles() {
//   xlistTileTitles
//       .map((e) => XSettingTileComponents(
//           leading: xlistTileIcons as Icon,
//           title: xlistTileTitles as String,
//           trailing: xlistTileTrailings as Icon))
//       .toList(growable: true);
// }

// List<String> xProfileListTilesList = [
//   for (var title in xlistTileTitles) (title)
// ];

// var t = xProfileListTilesList.asMap();
// var c = xProfileListTilesList.toList();

// final List xsettingTileComponentsList = [
//   XSettingTileComponents(
//     leading: xlistTileIcons[0],
//     title: xlistTileTitles[0],
//     trailing: xlistTileTrailings[0],
//   ),
//   XSettingTileComponents(
//     leading: xlistTileIcons[1],
//     title: xlistTileTitles[1],
//     trailing: xlistTileTrailings[1],
//   ),
//   XSettingTileComponents(
//     leading: xlistTileIcons[2],
//     title: xlistTileTitles[2],
//     trailing: xlistTileTrailings[2],
//   ),
//   XSettingTileComponents(
//     leading: xlistTileIcons[3],
//     title: xlistTileTitles[3],
//     trailing: xlistTileTrailings[3],
//   ),
//   XSettingTileComponents(
//     leading: xlistTileIcons[4],
//     title: xlistTileTitles[4],
//     trailing: xlistTileTrailings[4],
//   ),
//   XSettingTileComponents(
//     leading: xlistTileIcons[5],
//     title: xlistTileTitles[5],
//     trailing: xlistTileTrailings[5],
//   ),
//   XSettingTileComponents(
//     leading: xlistTileIcons[6],
//     title: xlistTileTitles[6],
//     trailing: xlistTileTrailings[6],
//   ),
// ];