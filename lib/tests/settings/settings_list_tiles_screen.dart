import 'package:app_vorlage_prototyp/TESTs/setting/class_setting_tile_components.dart';
import 'package:app_vorlage_prototyp/components/app_bar/sliver_appbar_with_search.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:flutter/material.dart';

class SettingListTileListScreen extends StatelessWidget {
  final XSettingTileComponents tileComponents;

  const SettingListTileListScreen({
    Key? key,
    required this.tileComponents,
  }) : super(key: key);

  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              XSliverAppBarWithSearch(
                  pinned: _pinned,
                  snap: _snap,
                  floating: _floating,
                  appBarTitle: Text(tileComponents.title),
                  onPressed: () {})
              // SettingsAppbar(
              //     floating: true,
              //     pinned: true,
              //     snap: false,
              //     appBarTitle: ,
            ];
          },
          body: SingleChildScrollView(
              child: Container(
            // height: deviceHeight(context) * 1,
            // width: deviceWidth(context) * 1,
            margin: EdgeInsets.only(
                left: mSecondaryMarginLR, right: mSecondaryMarginLR),
            child: Wrap(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: 90,
                ),
                Text('data'),
                // SearchCard(),
                Container(
                    color: Colors.red,
                    margin: EdgeInsets.only(top: mSecondaryMarginLR),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: 20,
                    child: SizedBox(
                      height: 20,
                    )

                    // SettingListTileList(),
                    ),
              ])
            ]),
          )),
        ),
      ),
    );
  }
}

// class SearchCard extends StatelessWidget {
//   final TextEditingController _searchControl = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 6.0,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: rSecondaryRadiusAll,
//         ),
//         child: TextField(
//           style: TextStyle(
//             fontSize: 15.0,
//             color: Colors.black,
//           ),
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.all(10.0),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10.0),
//               borderSide: BorderSide(
//                 color: Colors.white,
//               ),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.white,
//               ),
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             hintText: "Search",
//             prefixIcon: Icon(
//               Icons.search,
//               color: Colors.black,
//             ),
//             hintStyle: TextStyle(
//               fontSize: 15.0,
//               color: Colors.black,
//             ),
//           ),
//           maxLines: 1,
//           controller: _searchControl,
//         ),
//       ),
//     );
//   }
// }
