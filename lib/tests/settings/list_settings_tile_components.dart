import 'package:app_vorlage_prototyp/TESTs/setting/class_setting_tile_components.dart';
import 'package:flutter/material.dart';

final List<String> xlistTileTitles = [
  "Account",
  "Favourite",
  "Payment",
  "Notification",
  "???"
];

final List<Icon> xlistTileIcons = [
  Icon(Icons.person),
  Icon(Icons.favorite_outline),
  Icon(Icons.credit_card),
  Icon(Icons.message),
  Icon(Icons.info),
];

final List xlistTileTrailings = [
  Icon(Icons.arrow_forward),
  Icon(Icons.arrow_forward),
  Icon(Icons.arrow_forward),
  Icon(Icons.arrow_forward),
  Icon(Icons.arrow_forward),
];

final List xsettingTileComponentsList = [
  XSettingTileComponents(
    leading: Icon(Icons.person),
    title: "Account",
    trailing: Icon(Icons.arrow_forward),
  ),
  XSettingTileComponents(
    leading: Icon(Icons.favorite),
    title: "Favourite",
    trailing: Icon(Icons.arrow_forward),
  ),
  XSettingTileComponents(
    leading: Icon(Icons.credit_card),
    title: "Payment",
    trailing: Icon(Icons.arrow_forward),
  ),
  XSettingTileComponents(
    leading: Icon(Icons.message),
    title: "Notification",
    trailing: Icon(Icons.arrow_forward),
  ),
  XSettingTileComponents(
    leading: Icon(Icons.info),
    title: "???",
    trailing: Icon(Icons.arrow_forward),
  ),
  XSettingTileComponents(
    leading: Icon(Icons.info),
    title: "???",
    trailing: Icon(Icons.arrow_forward),
  ),
  XSettingTileComponents(
    leading: Icon(Icons.info),
    title: "???",
    trailing: Icon(Icons.arrow_forward),
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