import 'package:app_vorlage_prototyp/config/modules/others/title_and_see_all_widget.dart';
import 'package:app_vorlage_prototyp/components/app_bar/homepage_app_bar.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/images.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/card_lists.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'home_body_components/card_screen_components/class_card_screen_list.dart';
import 'home_body_components/card_template_popular.dart';
import 'home_body_components/catagory_screen_components/catagory_screen_list.dart';
import 'package:flutter/material.dart';

class BodyHomepage extends StatefulWidget {
  const BodyHomepage({Key? key}) : super(key: key);

  @override
  _BodyHomepage0State createState() => _BodyHomepage0State();
}

class _BodyHomepage0State extends State<BodyHomepage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  int? _value = 1;
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
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: cPrimaryColor,
                    ),
                    child: Text(
                      'Filter',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
                //ExpansionPanelDemo(),
              ],
            ),
          ),
          body: CustomScrollView(slivers: [
            XHomepageAppBar(
              floating: _floating,
              pinned: _pinned,
              snap: _snap,
              imageData: imgProfile,
              subTitle: 'ttttttttt...',
              subTitleStyle: Theme.of(context).textTheme.subtitle1,
              title: 'Title...',
              titleStyle: Theme.of(context).textTheme.headline1,
              onPressed: () {
                if (_scaffoldKey.currentState!.isDrawerOpen) {
                  _scaffoldKey.currentState!.openEndDrawer();
                } else {
                  _scaffoldKey.currentState!.openDrawer();
                }
              },
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                // ExpansionPanalListTest(),
              ]),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                XTitleAndSeeAllWidget(
                  title: "Catagories",
                  subTitle: "See all",
                  onPrssed: () {},
                ),
              ]),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: pSecondaryPaddingLR,
                      top: pPrimaryPaddingTB,
                      right: pSecondaryPaddingLR,
                      bottom: pPrimaryPaddingTB),
                  height: 100,
                  width: MediaQuery.of(context).size.width * 1,
                  child:
                      // Placeholder(),
                      XCategoryScreensList(),
                );
              },
              childCount: 1,
            )),
            SliverList(
              delegate: SliverChildListDelegate([
                XTitleAndSeeAllWidget(
                  // TODO: CREATE PAGE SPECIALS, OPENED WHEN ON "SEE all" IS PRESSED. SHOULD BE THE SAME AS CATEGORY_SCREEN BUT ONLY FOR SPECIALS (A LIST OF SPECIALS)
                  title: "Specials",
                  subTitle: "See all",
                  onPrssed: () {},
                ),
              ]),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: pSecondaryPaddingLR,
                      top: pPrimaryPaddingTB,
                      right: pSecondaryPaddingLR,
                      bottom: pPrimaryPaddingTB),
                  height: 200,
                  width: MediaQuery.of(context).size.width * 1,
                  child:
                      // Placeholder()
                      XCardScreensList(),
                );
              },
              childCount: 1,
            )),
            SliverList(
              delegate: SliverChildListDelegate([
                XTitleAndSeeAllWidget(
                  // TODO: CREATE PAGE POPULAR, OPENED WHEN ON "SEE all" IS PRESSED. SHOULD BE THE SAME AS CATEGORY_SCREEN BUT ONLY FOR POPULAR (A LIST OF POPULARS)
                  title: "Popular",
                  subTitle: "See all",
                  onPrssed: () {},
                ),
              ]),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                  left: pSecondaryPaddingLR,
                  top: pPrimaryPaddingTB,
                  right: pSecondaryPaddingLR),
              sliver: Container(
                child: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    ///number of items in the horizontal axis
                    crossAxisCount: 2,
                    mainAxisSpacing: sSecondary,
                    crossAxisSpacing: sSecondary,
                    childAspectRatio: (180 / 200), //(width / height)
                  ),
                  delegate: SliverChildListDelegate(
                    xcardComponents
                        .map((cC) => XCardTemplatePopular(
                              cComponents: cC,
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
