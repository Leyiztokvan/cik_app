import 'package:app_vorlage_prototyp/TESTs/setting/settings_list_tiles_list.dart';
import 'package:app_vorlage_prototyp/components/app_bar/sliver_appbar_with_search.dart';
import 'package:app_vorlage_prototyp/components/screensize_reducers.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:flutter/material.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = false;
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
                  appBarTitle: Text('Setting'),
                  onPressed: () {})
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
                Container(
                  margin: EdgeInsets.only(top: mSecondaryMarginLR),
                  height: MediaQuery.of(context).size.height,
                  child: SettingListTileList(),
                ),
              ])
            ]),
          )),
        ),
      ),
    );
  }
}

// class ListTileSetting extends StatelessWidget {
//   const ListTileSetting({
//     Key? key, required this.tileComponents,
//   }) : super(key: key);

//   final TileComponents tileComponents;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       // CHANGE ROUTE
//       onTap: () {
//         Navigator.pushNamed(context, '/home');
//       },
//       leading: Icon(Icons.person),
//       title: Text.rich(
//           TextSpan(text: 'Account', style: newTheme().textTheme.bodyText1)),
//     );
//   }
// }
