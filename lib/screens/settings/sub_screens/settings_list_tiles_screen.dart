import 'package:app_vorlage_prototyp/components/app_bar/sliver_appbar_with_search.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/class_settings_tile_components.dart';
import 'package:flutter/material.dart';

class SettingListTileListScreen extends StatelessWidget {
  final XSettingTileComponents tileComponents;

  const SettingListTileListScreen({
    Key? key,
    required this.tileComponents,
  }) : super(key: key);

  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: CustomScrollView(slivers: [
            XSliverAppBarWithSearch(
                leading: GestureDetector(
                  child: Icon(iconBackwardArrow),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                pinned: _pinned,
                snap: _snap,
                floating: _floating,
                appBarTitle: Text(tileComponents.title,
                    style: Theme.of(context).textTheme.headline2),
                onPressed: () {}),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: 33,
                        padding: EdgeInsets.only(left: pPrimaryPaddingLR),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        // itemExtent: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            horizontalTitleGap: 10,
                            // dense: true,
                            title: Text("Setting $index"),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_outlined),
                            onTap: () {},
                          );
                        }),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}

////This version works but has no search bar
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: XAppBarWithSearch(
//         pinned: _pinned,
//         snap: _snap,
//         floating: _floating,
//         appBarTitle: Text(tileComponents.title),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//           itemCount: 30,
//           padding: EdgeInsets.only(left: pPrimaryPaddingLR),
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           // itemExtent: 30,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               horizontalTitleGap: 10,
//               // dense: true,
//               title: Text("Setting ${index}"),
//               trailing: Icon(Icons.arrow_forward_ios_outlined),
//               onTap: () {},
//             );
//           }),
//     );
//   }
// }
