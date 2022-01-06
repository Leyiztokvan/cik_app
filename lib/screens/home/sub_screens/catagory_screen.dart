import 'package:app_vorlage_prototyp/TESTs/test_expansion_panal.dart';
import 'package:app_vorlage_prototyp/components/app_bar/custom_sliver_appbar_with_search_and_filter.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/card_template.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/card_lists.dart';
import 'package:app_vorlage_prototyp/screens/home/home_body_components/catagory_screen_components/catagory_list.dart';
import 'package:flutter/material.dart';

class XCategoryDetailsScreen extends StatefulWidget {
  XCategoryDetailsScreen({Key? key, required this.ccategory}) : super(key: key);

  final XCategory ccategory;

  @override
  State<XCategoryDetailsScreen> createState() => _XCategoryDetailsScreenState();
}

class _XCategoryDetailsScreenState extends State<XCategoryDetailsScreen> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 70,
                  // width: double.infinity,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Text(
                      'Filter',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
                // TODO: XExpansionÜanelDemo DOESN'T WORK PROPERLY. FIX IT  AND RENAME IT MAYBE
                // XExpansionPanelDemo(),
                XTestPanal(),
              ],
            ),
          ),
          body: CustomScrollView(slivers: <Widget>[
            XSliverAppBarWithSearchAndFilter(
              floating: _floating,
              pinned: _pinned,
              snap: _snap,
              appBarTitle: Text(
                '${widget.ccategory.title}',
                style: Theme.of(context).textTheme.headline2,
              ),
              // expandedHeight: 100,
              // collapsedHeight: 40,
              onPressed: () {
                if (_scaffoldKey.currentState!.isDrawerOpen) {
                  _scaffoldKey.currentState!.openEndDrawer();
                } else {
                  _scaffoldKey.currentState!.openDrawer();
                }
              },
            ),
            SliverPadding(
                padding: EdgeInsets.only(
                    left: bPrimaryScreenBorderLR,
                    top: bPrimaryScreenBorderTB * 2,
                    right: bPrimaryScreenBorderLR),
                // EdgeInsets.only(left: 10, top: 16, right: 10),
                sliver: SliverGrid(
                  // ignore: prefer_const_constructors
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    ///number of items in the horizontal axis
                    crossAxisCount: 2,
                    mainAxisSpacing: sSecondary,
                    crossAxisSpacing: sSecondary,
                    childAspectRatio: (160 / 180), // ( width / height)
                    // childAspectRatio: 1,
                  ),
                  delegate: SliverChildListDelegate(
                    xcardComponents
                        .map((cC) => XCardTemplate(cComponents: cC))
                        .toList(),
                  ),
                ))
          ])),
    );
  }
}
