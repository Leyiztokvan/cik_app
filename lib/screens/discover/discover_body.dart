import 'package:app_vorlage_prototyp/components/app_bar/app_bar_with_search.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/list_discover_tab_bar_titles.dart';
import 'package:app_vorlage_prototyp/components/bottom_navigation_bar.dart';
import 'package:app_vorlage_prototyp/screens/discover/discover_body_components/discover_map_screen.dart';
import 'package:app_vorlage_prototyp/screens/discover/discover_body_components/discover_products_screen.dart';
// import 'package:app_vorlage_prototyp/config/modules/images.dart';
// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

const double _tabBarHeight = 40;
const double _appBarHeight = 100;
final double _bottomNaviagtionBar = bottomNaviagtionBarHeight;

class BodyDiscover extends StatelessWidget {
  const BodyDiscover({Key? key}) : super(key: key);

  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: XAppBarWithSearch(
          // leading: GestureDetector(
          //   child: Icon(iconBackwardArrow),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          appBarTitle:
              Text("Discover", style: Theme.of(context).textTheme.headline2),
          centerTitle: true,
          floating: _floating,
          pinned: _pinned,
          snap: _snap,
        ),
        body: DiscoverTabSection(),
      ),
    );
  }
}

class DiscoverTabSection extends StatelessWidget {
  DiscoverTabSection({
    Key? key,
  }) : super(key: key);

  final double _tabBarViewHeight =
      _tabBarHeight + _appBarHeight + _bottomNaviagtionBar + 34;
  @override
  Widget build(BuildContext context) {
    return tabSection(context);
  }

  Widget tabSection(BuildContext context) {
    return DefaultTabController(
      length: xdiscoverTabBarTitles.length,
      initialIndex: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
              elevation: ePrimary,
              color: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(rPrimaryRadius),
                  bottomRight: Radius.circular(rPrimaryRadius),
                ),
              ),
              child: Container(
                width: double.infinity - bPrimaryScreenBorderLR,
                child: TabBar(
                  tabs: xdiscoverTabBarTitles
                      .map((e) => Container(
                          height: _tabBarHeight,
                          alignment: Alignment.center,
                          child: Text(
                            e.title,
                            style: Theme.of(context).textTheme.bodyText1,
                          )))
                      .toList(),
                  // isScrollable: true,
                  indicatorColor: Theme.of(context).colorScheme.primary,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 3),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                margin: EdgeInsets.only(
                    left: bPrimaryScreenBorderLR,
                    right: bPrimaryScreenBorderLR),
                height: MediaQuery.of(context).size.height - _tabBarViewHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(rPrimaryRadius),
                    topRight: Radius.circular(rPrimaryRadius),
                  ),
                ),
                child: const TabBarView(
                    physics: ClampingScrollPhysics(),
                    children: [
                      XDiscoverMapScreen(),
                      XDiscoverProductsScreen(),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
