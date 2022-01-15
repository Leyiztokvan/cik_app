import 'package:app_vorlage_prototyp/components/app_bar/sliver_appbar_with_search.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/screens/settings/settings_body_components/settings_list_tiles_list.dart';
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
        resizeToAvoidBottomInset: false,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              XSliverAppBarWithSearch(
                  pinned: _pinned,
                  snap: _snap,
                  floating: _floating,
                  appBarTitle: Text('Setting',
                      style: Theme.of(context).textTheme.headline2),
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
                  child: const SettingListTileList(),
                ),
              ])
            ]),
          )),
        ),
      ),
    );
  }
}
