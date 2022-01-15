import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
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

  Widget _buildTabScreens(XCardComponents cComponents) {
    return XHomepageTabTitle(
      cComponents: cComponents,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _tabSection(context);
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      key: _listKeyTabSectionsList,
      length: xtabTitles.length,
      child: Container(
        // margin: EdgeInsets.only(bottom: mPrimaryMarginTB),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: mSecondaryMarginTB),
              constraints: const BoxConstraints(
                maxHeight: 40,
                minHeight: 40,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(rPrimaryRadius),
                    bottomLeft: Radius.circular(rPrimaryRadius),
                    topRight: Radius.circular(rPrimaryRadius),
                    bottomRight: Radius.circular(rPrimaryRadius)),
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
            // ),
            Flexible(
              // flex: 3,
              fit: FlexFit.loose,
              child: Container(
                margin: EdgeInsets.only(
                    left: mPrimaryMarginLR, right: mPrimaryMarginLR),
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: TabBarView(
                    children: xcardComponents
                        .map((e) => SingleChildScrollView(
                              // physics: NeverScrollableScrollPhysics(), ////when uncommented; the SingleChildScrollView does not scroll
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: mTertiaryMarginTB + 1, bottom: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
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
                                        tabsecondaryText: e.tabsecondaryText5,
                                        tabtertiaryText:
                                            '${e.tabtertiaryText5} ...'),
                                    XTabsectionSubtitle(
                                        tabsecondaryText: e.tabsecondaryText6,
                                        tabtertiaryText:
                                            '${e.tabtertiaryText6} ...'),
                                  ],
                                ),
                              ),
                            ))
                        .toList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
