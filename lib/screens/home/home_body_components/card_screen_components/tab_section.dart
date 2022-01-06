
// TODO: IF DON'T USE THIS WIDGET DELETE IT!

// import 'package:app_vorlage_prototyp/TESTs/class_card_screen_list.dart';
// import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
// import 'package:app_vorlage_prototyp/config/modules/lists/card_lists.dart';
// import 'package:flutter/material.dart';

// import 'class_card_components.dart';
// import 'tab_section_subtitle.dart';

// class XTabSection extends StatefulWidget {
//   const XTabSection({
//     Key? key,
//     // required this.cComponents,
//   }) : super(key: key);

//   // final XCardComponents cComponents;

//   @override
//   State<XTabSection> createState() => _XTabSectionState();
// }

// class _XTabSectionState extends State<XTabSection> {
//   final GlobalKey _listKeyTabSectionsList = GlobalKey();
//   late final XCardScreensList xXCardScreensList;

//   @override
//   Widget build(BuildContext context) {
//     // ignore: avoid_print
//     // print(' xtabTitles ${xtabTitles.length}');
//     // ignore: avoid_print
//     // print('xcardScreenComponents ${xcardScreenComponents.length}');
//     return Container(
//         margin: EdgeInsets.only(
//             left: mSecondaryMarginLR,
//             top: 0,
//             right: mSecondaryMarginLR,
//             bottom: 0),
//         child: Column(children: <Widget>[
//           _tabSection(context, _listKeyTabSectionsList),
//         ]));
//   }

//   Widget _tabSection(BuildContext context, Key _listKeyTabSectionsList) {
//     return DefaultTabController(
//       key: _listKeyTabSectionsList,
//       length: 
//       xtabTitles.length,
//       child: Container(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.only(top: mTertiaryMarginTB),
//               decoration: BoxDecoration(
//                 color: Theme.of(context).colorScheme.secondary,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(rSecondaryRadius),
//                     bottomLeft: Radius.circular(rSecondaryRadius)),
//               ),
//               child: TabBar(
//                 // labelColor: cPlaceHolder,
//                 // Theme.of(context).colorScheme.primary,
//                 // unselectedLabelColor: blue,
//                 // Theme.of(context).colorScheme.onPrimary,
//                 indicatorColor: Theme.of(context).colorScheme.primary,
//                 tabs: xtabTitles,
//                 isScrollable: true,
//               ),
//             ),
//             Container(
//               //Add this to give height
//               height: MediaQuery.of(context).size.height,
//               child: TabBarView(
//                   children: xcardComponents
//                       .map((e) => Container(
//                             margin: EdgeInsets.only(
//                                 left: mSecondaryMarginLR,
//                                 top: mTertiaryMarginTB + 1,
//                                 right: mSecondaryMarginLR,
//                                 bottom: 0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 XTabsectionSubtitle(
//                                     tabsecondaryText: e.tabsecondaryText1,
//                                     tabtertiaryText:
//                                         '${e.tabtertiaryText1} ...'),
//                                 XTabsectionSubtitle(
//                                     tabsecondaryText: e.tabsecondaryText2,
//                                     tabtertiaryText:
//                                         '${e.tabtertiaryText2} ...'),
//                                 XTabsectionSubtitle(
//                                     tabsecondaryText: e.tabsecondaryText3,
//                                     tabtertiaryText:
//                                         '${e.tabtertiaryText3} ...'),
//                                 XTabsectionSubtitle(
//                                     tabsecondaryText: e.tabsecondaryText4,
//                                     tabtertiaryText:
//                                         '${e.tabtertiaryText4} ...'),
//                                 XTabsectionSubtitle(
//                                     tabsecondaryText: e.tabsecondaryText4,
//                                     tabtertiaryText:
//                                         '${e.tabtertiaryText5} ...'),
//                                 XTabsectionSubtitle(
//                                     tabsecondaryText: e.tabsecondaryText4,
//                                     tabtertiaryText:
//                                         '${e.tabtertiaryText6} ...'),
//                               ],
//                             ),
//                           ))
//                       .toList()),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
