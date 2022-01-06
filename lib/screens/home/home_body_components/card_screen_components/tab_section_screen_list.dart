import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/card_lists.dart';
import 'package:flutter/material.dart';
import 'tab_section_subtitle.dart';
import 'tab_title.dart';

class XTabSectionscreenList extends StatefulWidget {
  const XTabSectionscreenList({Key? key}) : super(key: key);

  @override
  _XTabSectionscreenListState createState() => _XTabSectionscreenListState();
}

class _XTabSectionscreenListState extends State<XTabSectionscreenList> {
  final GlobalKey _listKeyTabSectionsList = GlobalKey();
  List<Widget> xtabTitles = [];

  @override
  void initState() {
    super.initState();
    _addtabComponents();
  }

  void _addtabComponents() {
    xcardComponents.forEach((XCardComponents cardComponents) {
      xtabTitles.add(_buildTabScreens(cardComponents));
    });
  }

  // Widget _buildScreens(XCardComponents cComponents) {
  //   return XCardTemplate(
  //     cComponents: cComponents,
  //   );
  // }

  Widget _buildTabScreens(XCardComponents cComponents) {
    return XTabTitle(
      cComponents: cComponents,
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    // print(' xtabTitles ${xtabTitles.length}');
    // ignore: avoid_print
    // print('xcardScreenComponents ${xcardScreenComponents.length}');
    return Container(
        margin: EdgeInsets.only(
            left: mSecondaryMarginLR,
            top: 0,
            right: mSecondaryMarginLR,
            bottom: 0),
        child: Column(children: <Widget>[
          _tabSection(context),
        ]));
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      key: _listKeyTabSectionsList,
      length: xtabTitles.length,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: mTertiaryMarginTB),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(rSecondaryRadius),
                    bottomLeft: Radius.circular(rSecondaryRadius)),
              ),
              child: TabBar(
                // labelColor: cPlaceHolder,
                // Theme.of(context).colorScheme.primary,
                // unselectedLabelColor: blue,
                // Theme.of(context).colorScheme.onPrimary,
                indicatorColor: Theme.of(context).colorScheme.primary,
                tabs: xtabTitles,
                isScrollable: true,
              ),
            ),
            Container(
              //Add this to give height
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                  children: xcardComponents
                      .map((e) => Container(
                            margin: EdgeInsets.only(
                                left: mPrimaryMarginLR,
                                top: mTertiaryMarginTB + 1,
                                right: mPrimaryMarginLR,
                                bottom: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                XTabsectionSubtitle(
                                    tabsecondaryText: e.tabsecondaryText1,
                                    tabtertiaryText:
                                        '${e.tabtertiaryText1} ...'),
                                XTabsectionSubtitle(
                                    tabsecondaryText: e.tabsecondaryText2,
                                    tabtertiaryText:
                                        '${e.tabtertiaryText2} ...'),
                                XTabsectionSubtitle(
                                    tabsecondaryText: e.tabsecondaryText3,
                                    tabtertiaryText:
                                        '${e.tabtertiaryText3} ...'),
                                XTabsectionSubtitle(
                                    tabsecondaryText: e.tabsecondaryText4,
                                    tabtertiaryText:
                                        '${e.tabtertiaryText4} ...'),
                                XTabsectionSubtitle(
                                    tabsecondaryText: e.tabsecondaryText4,
                                    tabtertiaryText:
                                        '${e.tabtertiaryText5} ...'),
                                XTabsectionSubtitle(
                                    tabsecondaryText: e.tabsecondaryText4,
                                    tabtertiaryText:
                                        '${e.tabtertiaryText6} ...'),
                              ],
                            ),
                          ))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
