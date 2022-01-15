import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/class_profile_tile_components.dart';
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
  const Icon(Icons.favorite_outline),
  Icon(iconCreditCardOutlined),
  const Icon(Icons.message),
  Icon(iconInfoOutlined),
];

// final List xlistTileTrailings = [
// Icon(iconArrowForward),
// Icon(iconArrowForward),
// Icon(iconArrowForward),
// Icon(iconArrowForward),
// Icon(iconArrowForward),
// ];

final List xprofileTileComponentsList = [
  XProfileTileComponents(
    leading: Icon(
      iconPersonOutlined,
    ),
    title: "Account",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(iconFavoriteOutlined),
    title: "Favourites",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(iconCreditCardOutlined),
    title: "Payment",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    // trailing: Icon(Icons.arrow_forward),
  ),
  XProfileTileComponents(
    leading: Icon(iconInfoOutlined),
    title: "???",
    // trailing: Icon(Icons.arrow_forward),
  ),
  // XProfileTileComponents(
  //   leading: Icon(iconLogoutOutlined),
  //   title: "Logout",
  //   // trailing: Icon(Icons.arrow_forward),
  // ),
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