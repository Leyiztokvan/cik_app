import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/home/sub_screens/card_screen.dart';
import 'package:flutter/material.dart';
import 'class_card_components.dart';

class XCardTemplate extends StatelessWidget {
  final XCardComponents cComponents;

  const XCardTemplate({
    Key? key,
    required this.cComponents,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      alignment: Alignment.topLeft,
      height: 180,
      width: 160,
      decoration: BoxDecoration(borderRadius: rPrimaryRadiusAll),
      child: Stack(children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XCardDetailsScreen(
                                cComponents: cComponents,
                              )),
                    );
                  },
                  child: Container(
                    height: 180,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 110,
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: mPrimaryMargin),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: rPrimaryRadiusAll,
                            // // border can be used (optional): e.g. when the image background is not transparent
                            border: Border.all(),
                            // image: DecorationImage(
                            // image: cComponents.imageData,
                            // fit: BoxFit.scaleDown)
                          ),
                          child: Center(
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                  // image: DecorationImage(
                                  //     image: cComponents.imageData,
                                  //     fit: BoxFit.fitWidth)
                                  ),
                              child: FittedBox(
                                child: Icon(iconProduct, color: cBlack
                                    // Theme.of(context).iconTheme.color,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: pPrimaryPaddingLR,
                                        right: pPrimaryPaddingLR),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              cComponents.title,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                                cComponents.secondaryText,
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 140,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 24,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(
                            left: pPrimaryPaddingLR, right: pPrimaryPaddingLR),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      cComponents.tertiaryText,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(cComponents.price,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          // top: 0.0,
          // left: 0.0,
          right: mPrimaryMarginLR * 4.5,
          bottom: mPrimaryMarginTB,
          child: Container(
              alignment: Alignment.bottomRight,
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(rPrimaryRadius),
              )),
              child: GestureDetector(onTap: () {}, child: cComponents.icon1)),
        ),
        Positioned(
          // top: 0.0,
          // left: 0.0,
          right: mPrimaryMarginLR,
          bottom: mPrimaryMarginTB,
          child: Container(
              alignment: Alignment.bottomRight,
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(rPrimaryRadius),
              )),
              child: GestureDetector(onTap: () {}, child: cComponents.icon2)),
        ),
      ]),
    );
  }
}




//// this version also works but the GestureDetector for the Favorite and ShoppingBag Butten is not very responsive 
////
// import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
// import 'package:app_vorlage_prototyp/config/modules/icons.dart';
// import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
// import 'package:app_vorlage_prototyp/screens/home/sub_screens/card_screen.dart';
// import 'package:flutter/material.dart';
// import 'class_card_components.dart';

// class XCardTemplate extends StatelessWidget {
//   final XCardComponents cComponents;

//   const XCardTemplate({
//     Key? key,
//     required this.cComponents,
//   }) : super(key: key);

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return Container(
//         height: 180,
//         width: 160,
//         decoration: BoxDecoration(borderRadius: rPrimaryRadiusAll),
//         child: Card(
//           child: Column(
//             children: [
//               Flexible(
//                 fit: FlexFit.tight,
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => XCardDetailsScreen(
//                                 cComponents: cComponents,
//                               )),
//                     );
//                   },
//                   child: Container(
//                     height: 180,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Container(
//                           height: 110,
//                           width: double.infinity,
//                           margin: EdgeInsets.only(bottom: mPrimaryMargin),
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).colorScheme.surface,
//                             borderRadius: rPrimaryRadiusAll,
//                             // // border can be used (optional): e.g. when the image background is not transparent
//                             border: Border.all(),
//                             // image: DecorationImage(
//                             // image: cComponents.imageData,
//                             // fit: BoxFit.scaleDown)
//                           ),
//                           child: Center(
//                             child: Container(
//                               height: 80,
//                               width: 80,
//                               decoration: BoxDecoration(
//                                   // image: DecorationImage(
//                                   //     image: cComponents.imageData,
//                                   //     fit: BoxFit.fitWidth)
//                                   ),
//                               child: FittedBox(
//                                 child: Icon(iconProduct, color: cBlack
//                                     // Theme.of(context).iconTheme.color,
//                                     ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Flexible(
//                           flex: 1,
//                           fit: FlexFit.tight,
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Expanded(
//                                   flex: 1,
//                                   child: Container(
//                                     padding: EdgeInsets.only(
//                                         left: pPrimaryPaddingLR,
//                                         right: pPrimaryPaddingLR),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Expanded(
//                                           flex: 1,
//                                           child: Container(
//                                             alignment: Alignment.topLeft,
//                                             child: Text(
//                                               cComponents.title,
//                                               overflow: TextOverflow.ellipsis,
//                                               style: Theme.of(context)
//                                                   .textTheme
//                                                   .bodyText1,
//                                             ),
//                                           ),
//                                         ),
//                                         Expanded(
//                                           flex: 1,
//                                           child: Container(
//                                             alignment: Alignment.topLeft,
//                                             child: Text(cComponents.secondaryText,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .bodyText1),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ]),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               // SizedBox(
//               //   height: 5,
//               // ),
//               Container(
//                 alignment: Alignment.bottomCenter,
//                 // height: 30,
//                 width: 160,
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Flexible(
//                       flex: 2,
//                       child: Container(
//                         height: 24,
//                         alignment: Alignment.topLeft,
//                         padding: EdgeInsets.only(
//                             left: pPrimaryPaddingLR, right: pPrimaryPaddingLR),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               flex: 2,
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       cComponents.tertiaryText,
//                                       style:
//                                           Theme.of(context).textTheme.bodyText1,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Expanded(
//                                     flex: 1,
//                                     child: Container(
//                                       alignment: Alignment.centerLeft,
//                                       child: Text("${cComponents.price}",
//                                           style: Theme.of(context)
//                                               .textTheme
//                                               .bodyText1),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Flexible(
//                       flex: 1,
//                       child: Container(
//                         height: 40,
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               Expanded(
//                                   flex: 2,
//                                   child: GestureDetector(
//                                       onTap: () {}, child: cComponents.icon1)),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               Expanded(
//                                   flex: 2,
//                                   child: GestureDetector(
//                                       onTap: () {}, child: cComponents.icon2)),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                             ]),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }
