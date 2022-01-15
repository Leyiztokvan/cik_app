import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/class_profile_tile_components.dart';
import 'package:app_vorlage_prototyp/screens/profile/sub_screens/profile_list_tile_screen.dart';
import 'package:flutter/material.dart';

class XProfileListTile extends StatelessWidget {
  const XProfileListTile(
      {Key? key,
      required this.xtileComponents,
      this.onTap,
      this.leading,
      this.title})
      : super(key: key);
  final XProfileTileComponents xtileComponents;

  get index => xtileComponents.leading;

  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        dense: true,
        // tileColor: ,
        minLeadingWidth: 10,
        contentPadding: EdgeInsets.only(
            left: pPrimaryPaddingLR,
            top: 0,
            bottom: 0,
            right: pPrimaryPaddingLR),
        horizontalTitleGap: 10,
        shape: RoundedRectangleBorder(borderRadius: rPrimaryRadiusAll),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => XProfileListTileListScreen(
                      xProfileTileComponents: xtileComponents)));
        },

        leading: xtileComponents.leading,
        title: Text(xtileComponents.title,
            // ),
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle1),
        // Adding trailing is possible but it have be add to the list_profile_tile_components first
        // trailing: xtileComponents.trailing,
      ),
    );
  }
}
