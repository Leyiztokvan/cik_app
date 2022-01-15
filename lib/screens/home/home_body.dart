import 'package:app_vorlage_prototyp/config/modules/cards/card_template_popular.dart';
import 'package:app_vorlage_prototyp/config/modules/others/title_and_see_all_widget.dart';
import 'package:app_vorlage_prototyp/components/app_bar/homepage_app_bar.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/images.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/card_lists.dart';
import 'package:app_vorlage_prototyp/screens/home/home_body_components/category_screen_components/category_screen_list.dart';
import 'package:app_vorlage_prototyp/screens/home/home_body_components/expansion_panal_drawer.dart';
import 'package:app_vorlage_prototyp/screens/home/sub_screens/popular_screen.dart';
import 'package:app_vorlage_prototyp/screens/home/sub_screens/specials_screen.dart';
import 'package:flutter/rendering.dart';
import 'home_body_components/card_screen_components/class_card_screen_list.dart';
import 'package:flutter/material.dart';

class BodyHomepage extends StatefulWidget {
  const BodyHomepage({Key? key}) : super(key: key);

  @override
  _BodyHomepage0State createState() => _BodyHomepage0State();
}

class _BodyHomepage0State extends State<BodyHomepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  int? _value = 1;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          drawer: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Drawer(
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Text(
                        'Filter',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  const XExpansionPanal(),
                ],
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(
                left: bPrimaryScreenBorderLR, right: bPrimaryScreenBorderLR),
            child: CustomScrollView(slivers: [
              XHomepageAppBar(
                floating: _floating,
                pinned: _pinned,
                snap: _snap,
                imageData: imgProfile,
                subTitle: 'Subtitle...',
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
              // SliverList(
              //   delegate: SliverChildListDelegate([]),
              // ),
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
                        // left: pPrimaryPaddingLR,
                        // top: pPrimaryPaddingTB,
                        // right: pSecondaryPaddingLR,
                        bottom: pPrimaryPaddingTB),
                    height: 100,
                    width: 70,
                    // MediaQuery.of(context).size.width * 1,
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
                    onPrssed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const XSpecialsScreen()));
                    },
                  ),
                ]),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(
                        // left: pPrimaryPaddingLR,
                        // top: pPrimaryPaddingTB,
                        // right: pPrimaryPaddingLR,
                        bottom: pPrimaryPaddingTB),
                    height: 190,
                    width: MediaQuery.of(context).size.width,
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
                    onPrssed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const XPopularScreen()));
                    },
                  ),
                ]),
              ),

              SliverList(
                delegate: SliverChildListDelegate(
                  xcardComponents
                      .map((cC) => Container(
                            height: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 190,
                                  width:
                                      MediaQuery.of(context).size.width * 0.468,
                                  child: XCardTemplatePopular(
                                    cComponents: cC,
                                  ),
                                ),
                                Container(
                                  height: 190,
                                  width:
                                      MediaQuery.of(context).size.width * 0.468,
                                  child: XCardTemplatePopular(
                                    cComponents: cC,
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),

              // //TODO:  SCALING NOT FUNCTION DOES ON ALL DEVICES IN LANDSCAPE MODE
              // SliverGrid(
              //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //       maxCrossAxisExtent: 180,
              //       mainAxisSpacing: sSecondary,
              //       crossAxisSpacing: 10,
              //       childAspectRatio: (1 / 1.12),
              //     ),
              //     delegate: SliverChildListDelegate(
              //       xcardComponents
              //           .map((cC) => XCardTemplatePopular(
              //                 cComponents: cC,
              //               ))
              //           .toList(),
              //     )),

              //// the Same as SliverGridDelegateWithMaxCrossAxisExtent
              // SliverGrid.extent(
              //   maxCrossAxisExtent: 180,
              //   mainAxisSpacing: sSecondary,
              //   crossAxisSpacing: 10,
              //   childAspectRatio: (1 / 1.12), //(width / height)

              //   children: xcardComponents
              //       .map((cC) => XCardTemplatePopular(
              //             cComponents: cC,
              //           ))
              //       .toList(),
              // ),

              //// this version work, put the size of the card is not optimaly changed between normal mode and landscape mode
              // SliverPadding(
              //   padding: EdgeInsets.only(
              //       // left: pPrimaryPaddingLR,
              //       // top: pPrimaryPaddingTB,
              //       // right: pSecondaryPaddingLR,
              //       bottom: pPrimaryPaddingTB),
              //   sliver: Container(
              //     ////! do not limit the width of this container
              //     child: SliverGrid(
              //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         ///number of items in the horizontal axis
              //         crossAxisCount: 2,
              //         mainAxisSpacing: sSecondary,
              //         crossAxisSpacing:
              //             10
              //         childAspectRatio:
              //             (cardWidth / cardHeight), //(width / height)
              //       ),
              //       delegate: SliverChildListDelegate(
              //         xcardComponents
              //             .map((cC) => XCardTemplatePopular(
              //                   cComponents: cC,
              //                 ))
              //             .toList(),
              //       ),
              //     ),
              //   ),
              // ),
            ]),
          )),
    );
  }
}
