import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/class_settings_tile_components.dart';
import 'package:app_vorlage_prototyp/screens/settings/sub_screens/settings_list_tiles_screen.dart';
import 'package:flutter/material.dart';

class XSettingListTile extends StatelessWidget {
  const XSettingListTile({Key? key, required this.xtileComponents})
      : super(key: key);
  final XSettingTileComponents xtileComponents;

  get index => xtileComponents.leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: rPrimaryRadiusAll),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SettingListTileListScreen(
                      tileComponents: xtileComponents)));
        },
        leading: xtileComponents.leading,
        title: Text.rich(TextSpan(text: xtileComponents.title),
            style: Theme.of(context).textTheme.subtitle1),
        trailing: xtileComponents.trailing,
      ),
    );
  }
}
