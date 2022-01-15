import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/discover_products_screen_list_tile.dart';
import 'package:app_vorlage_prototyp/screens/discover/sub_screen/discover_list_tile_screen.dart';
// import 'package:app_vorlage_prototyp/config/modules/images.dart';
import 'package:flutter/material.dart';

class XDiscoverProductsScreen extends StatelessWidget {
  const XDiscoverProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: pPrimaryPaddingLR, right: pPrimaryPaddingLR),
      child: ListView.builder(
          itemCount: 11,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          // itemExtent: ,
          itemBuilder: (BuildContext context, int index) {
            return XDiscoverProductsListTile(
              tileTitle: "Title $index",
              // faker.food.restaurant(),
              tileSubtitle: "Subtitle $index",
              // faker.address.neighborhood(),
            );
          }),
    );
  }
}
