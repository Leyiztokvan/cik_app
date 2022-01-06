// import 'package:app_vorlage_prototyp/components/search_bar/custom_search_bar.dart';
// import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
// import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
// import 'package:flutter/material.dart';

// class XCustomSliverAppBarWithSearch extends StatelessWidget {
//   const XCustomSliverAppBarWithSearch({
//     Key? key,
//     required bool pinned,
//     required bool snap,
//     required bool floating,
//     required this.appBarTitle,
//     // double? expandedHeight,
//     // double? collapsedHeight,
//     required this.onPressed,
//   })  : pinned = pinned,
//         snap = snap,
//         floating = floating,
//         // _expandedHeight = expandedHeight ?? 100,
//         // _collapsedHeight = collapsedHeight ?? 40,
//         super(key: key);

//   final bool floating;
//   final bool pinned;
//   final bool snap;

//   final Widget appBarTitle;
//   // final double _expandedHeight;
//   // final double _collapsedHeight;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(rSecondaryRadius),
//             bottomRight: Radius.circular(rSecondaryRadius),
//           ),
//         ),
//         forceElevated: true,
//         excludeHeaderSemantics: true,
//         automaticallyImplyLeading: false,
//         floating: floating,
//         pinned: pinned,
//         snap: snap,
//         // collapsedHeight: _collapsedHeight,
//         // expandedHeight: _expandedHeight,
//         collapsedHeight: 58,
//         expandedHeight: 110,
//         elevation: ePrimary,
//         title: appBarTitle,
//         centerTitle: true,
//         flexibleSpace: FlexibleSpaceBar(
//             background: Container(
//                 margin: EdgeInsets.only(bottom: mPrimaryMarginTB),
//                 alignment: Alignment.bottomCenter,
//                 color: transparent,
//                 child: Card(
//                   margin: EdgeInsets.only(
//                     left: mSecondaryMarginLR,
//                     top: mPrimaryMarginTB,
//                     right: mSecondaryMarginLR,
//                   ),
//                   child: Card(
//                     elevation: 0,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         // color: white,
//                         borderRadius: rSecondaryRadiusAll,
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Card(
//                               elevation: 0,
//                               child: Container(
//                                 height: 39,
//                                 width: MediaQuery.of(context).size.width * 1,
//                                 // color: transparent,
//                                 child: XSearchBar(),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             elevation: 0,
//                             child: Container(
//                               height: 34,
//                               width: 1,
//                               decoration: BoxDecoration(
//                                 color: Theme.of(context).colorScheme.primary,
//                                 borderRadius: rSecondaryRadiusAll,
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                               flex: 0,
//                               child: Card(
//                                 elevation: 0,
//                                 child: Container(
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       // color: white,
//                                       borderRadius: rSecondaryRadiusAll,
//                                     ),
//                                     child: IconButton(
//                                         onPressed: onPressed,
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .primary,
//                                         icon: Icon(Icons.tune))),
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ))));
//   }
// }
