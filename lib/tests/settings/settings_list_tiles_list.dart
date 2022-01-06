import 'package:app_vorlage_prototyp/TESTs/settings/class_settings_tile_components.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/settings_list_tile.dart';
import 'package:app_vorlage_prototyp/tests/settings/list_settings_tile_components.dart';
import 'package:flutter/material.dart';

class SettingListTileList extends StatefulWidget {
  const SettingListTileList({Key? key}) : super(key: key);

  @override
  SettingListTileListState createState() => SettingListTileListState();
}

class SettingListTileListState extends State<SettingListTileList> {
  // GlobalKey _listKeysettingsListTileList = GlobalKey();
  List<Widget> xSettingTileList = [];

  @override
  void initState() {
    super.initState();
    _addTileComponents();
  }

  void _addTileComponents() {
    xsettingTileComponentsList.forEach((xSettingTileComponents) {
      xSettingTileList.add(_buildScreens(xSettingTileComponents));
    });
  }

  Widget _buildScreens(XSettingTileComponents tileComponents) {
    return XSettingListTile(
      xtileComponents: tileComponents,
    );
  }

  @override
  //Change it to the example under if there are any problems
  Widget build(BuildContext context) => ListView(
        scrollDirection: Axis.vertical,
        //key: _listKeysettingsListTileList,
        //semanticChildCount: settingsListTileList.length,
        children: xSettingTileList.map((e) => e).toList(),
      );
}

// O It seems workin in the example above, but I don't know if would be any error later or when the app is on a customer phone
//  @override
//   Widget build(BuildContext context) => Container(
//         height: 600,
//         color: Colors.blueGrey,
//         child: ListView.builder(
//             scrollDirection: Axis.vertical,
//             key: _listKeysettingsListTileList,
//             itemCount: settingsListTileList.length,
//             itemBuilder: (context, index) {
//               return settingsListTileList[index];
//             }),
//       );
// }
