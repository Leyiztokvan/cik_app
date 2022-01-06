import 'package:app_vorlage_prototyp/TESTs/Profile/class_Profile_tile_components.dart';
import 'package:app_vorlage_prototyp/TESTs/profile/list_profile_tile_components.dart';
import 'package:app_vorlage_prototyp/TESTs/profile/profile_list_tile.dart';
import 'package:flutter/material.dart';

class XProfileListTileList extends StatefulWidget {
  const XProfileListTileList({Key? key}) : super(key: key);

  @override
  XProfileListTileListState createState() => XProfileListTileListState();
}

class XProfileListTileListState extends State<XProfileListTileList> {
  GlobalKey _listKeysettingsListTileList = GlobalKey();
  List<Widget> xProfileTileList = [];

  @override
  void initState() {
    super.initState();
    _addTileComponents();
  }

  void _addTileComponents() {
    xprofileTileComponentsList.forEach((xProfileTileComponents) {
      xProfileTileList.add(_buildScreens(xProfileTileComponents));
    });
  }

  Widget _buildScreens(XProfileTileComponents tileComponents) {
    return XProfileListTile(
      xtileComponents: tileComponents,
    );
  }

//   @override
//   //Change it to the example under if there are any problems
//   Widget build(BuildContext context) => ListView(
//         scrollDirection: Axis.vertical,
//         //key: _listKeysettingsListTileList,
//         //semanticChildCount: settingsListTileList.length,
//         children: xProfileTileList
//             .map((e) => Container(height: 50, child: e))
//             .toList(),
//       );
// }

// O It seems workin in the example above, but I don't know if would be any error later or when the app is on a customer phone
  @override
  Widget build(BuildContext context) => Container(
        // height: 600,
        // color: Colors.blueGrey,
        child: FractionallySizedBox(
          heightFactor: 1,
          child: ListView.builder(
              shrinkWrap: true,
              itemExtent: 50,
              scrollDirection: Axis.vertical,
              key: _listKeysettingsListTileList,
              itemCount: xProfileTileList.length,
              itemBuilder: (context, index) {
                return xProfileTileList[index];
              }),
        ),
      );
}
