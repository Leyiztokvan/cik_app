import 'package:app_vorlage_prototyp/config/modules/lists/list_profile_tile_components.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/profile_list_tile.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/class_profile_tile_components.dart';
import 'package:flutter/material.dart';

class XProfileListTileList extends StatefulWidget {
  const XProfileListTileList({Key? key}) : super(key: key);

  @override
  XProfileListTileListState createState() => XProfileListTileListState();
}

class XProfileListTileListState extends State<XProfileListTileList> {
  final GlobalKey _listKeysettingsListTileList = GlobalKey();
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

  @override
  Widget build(BuildContext context) => ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemExtent: 45,
      scrollDirection: Axis.vertical,
      key: _listKeysettingsListTileList,
      itemCount: xProfileTileList.length,
      itemBuilder: (context, index) {
        return xProfileTileList[index];
      });
}
