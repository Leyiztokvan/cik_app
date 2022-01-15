import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/discover/sub_screen/discover_list_tile_screen.dart';
import 'package:flutter/material.dart';

class XDiscoverMapsScreenListTile extends StatelessWidget {
  const XDiscoverMapsScreenListTile(
      {Key? key, required this.tileTitle, required this.tileSubtitle})
      : super(
          key: key,
        );
  final String tileTitle;
  final String tileSubtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: ePrimary,
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              // border: Border.all(width: 1),
              borderRadius: rPrimaryRadiusAll),
          child: ListTile(
            dense: true,
            horizontalTitleGap: 10,
            trailing: Icon(iconForwardArrow),
            leading: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: rPrimaryRadiusAll,
                // for image instead of icon; uncomment image:... and comment child:FittedBox....
                //   image: DecorationImage(
                //     image: AssetImage(
                //       imgProduct,
                //     ),
                //     fit: BoxFit.contain,
                //   ),
              ),
              child: FittedBox(
                child: Icon(
                  iconProduct,
                  color: cBlack,
                  // Theme.of(context).iconTheme.color,
                ),
              ),
            ),
            title: Text(
              tileTitle,
              // faker.food.restaurant(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
            subtitle: Text(tileSubtitle,
                // faker.address.neighborhood(),
                style: Theme.of(context).textTheme.bodyText2),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const XDiscoverListTileListScreen()));
            },
          )),
    );
  }
}
