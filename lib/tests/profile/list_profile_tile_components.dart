import 'package:app_vorlage_prototyp/TESTs/Profile/class_Profile_tile_components.dart';
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

// final List xlistTileTrailings = [
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
// ];

final List xprofileTileComponentsList = [
  XProfileTileComponents(
    leading: Icon(Icons.person),
    title: "Account",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(Icons.favorite),
    title: "Favourites",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(Icons.credit_card),
    title: "Payment",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(Icons.message),
    title: "Notification",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(Icons.info_outline),
    title: "???",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(Icons.logout),
    title: "Logout",
    // trailing: Icon(Icons.arrow_forward),
  ),
];



// TODO: This doesn't work
// void addListTiles() {
//   xlistTileTitles
//       .map((e) => XProfileTileComponents(
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

// final List xprofleTileComponentsList = [
//   XProfileTileComponents(
//     leading: xlistTileIcons[0],
//     title: xlistTileTitles[0],
//   ),
//   XProfileTileComponents(
//     leading: xlistTileIcons[1],
//     title: xlistTileTitles[1],
//   ),
//   XProfileTileComponents(
//     leading: xlistTileIcons[2],
//     title: xlistTileTitles[2],
//   ),
//   XProfileTileComponents(
//     leading: xlistTileIcons[3],
//     title: xlistTileTitles[3],
//   ),
//   XProfileTileComponents(
//     leading: xlistTileIcons[4],
//     title: xlistTileTitles[4],
//   ),
//   XProfileTileComponents(
//     leading: xlistTileIcons[5],
//     title: xlistTileTitles[5],
//   ),
//   XProfileTileComponents(
//     leading: xlistTileIcons[6],
//     title: xlistTileTitles[6],
//   ),
// ];