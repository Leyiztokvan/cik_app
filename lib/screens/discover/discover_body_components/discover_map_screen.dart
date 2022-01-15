import 'package:app_vorlage_prototyp/config/modules/images.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/discover_maps_screen_list_tile.dart';
// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class XDiscoverMapScreen extends StatelessWidget {
  const XDiscoverMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgMaps), fit: BoxFit.fitWidth),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Container(
              // margin: EdgeInsets.only(right: 10),
              height: 80,
              width: MediaQuery.of(context).size.width - 20,
              child: ListView.builder(
                  itemCount: 11,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemExtent: MediaQuery.of(context).size.width - 40,
                  // itemExtent: ,
                  itemBuilder: (BuildContext context, int index) {
                    return XDiscoverMapsScreenListTile(
                        tileTitle: "Title $index",
                        // faker.food.restaurant(),
                        tileSubtitle: "Subtitle $index");
                    // faker.address.neighborhood(),);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
