import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
// import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/screens/home/sub_screens/card_popular_screen.dart';
import 'package:flutter/material.dart';
import 'class_card_components.dart';

class XCardTemplatePopular extends StatelessWidget {
  final XCardComponents cComponents;

  const XCardTemplatePopular({
    Key? key,
    required this.cComponents,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      alignment: Alignment.topRight,
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
                          builder: (context) => XCardPopularDetailsScreen(
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
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: cComponents.imageData,
                                        fit: BoxFit.fitWidth)),
                                // child: FittedBox(
                                //   child: Icon(
                                //     iconProduct,
                                //     color: Theme.of(context).iconTheme.color,
                                //   ),
                                // ),
                              ),
                            )),
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
                width: 100,
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
                                    width: 10,
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
















// import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
// // import 'package:app_vorlage_prototyp/config/modules/icons.dart';
// import 'package:app_vorlage_prototyp/screens/home/sub_screens/card_popular_screen.dart';
// import 'package:flutter/material.dart';
// import 'class_card_components.dart';

// class XCardTemplatePopular extends StatelessWidget {
//   final XCardComponents cComponents;

//   const XCardTemplatePopular({
//     Key? key,
//     required this.cComponents,
//   }) : super(key: key);

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => XCardPopularDetailsScreen(
//                       cComponents: cComponents,
//                     )),
//           );
//         },
//         child: Container(
//             height: 180,
//             width: 160,
//             decoration: BoxDecoration(borderRadius: rPrimaryRadiusAll),
//             child: Card(
//                 child: Column(children: [
//               Container(
//                   height: 110,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(bottom: mPrimaryMargin),
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).colorScheme.surface,
//                     borderRadius: rPrimaryRadiusAll,
//                     // // border can be used (optional): e.g. when the image background is not transparent
//                     border: Border.all(),
//                     // image: DecorationImage(
//                     // image: cComponents.imageData,
//                     // fit: BoxFit.scaleDown)
//                   ),
//                   child: Center(
//                     child: Container(
//                       height: 80,
//                       width: 80,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: cComponents.imageData,
//                               fit: BoxFit.fitWidth)),
//                       // child: FittedBox(
//                       //   child: Icon(
//                       //     iconProduct,
//                       //     color: Theme.of(context).iconTheme.color,
//                       //   ),
//                       // ),
//                     ),
//                   )),
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         padding: EdgeInsets.only(
//                             left: pPrimaryPaddingLR, right: pPrimaryPaddingLR),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               flex: 1,
//                               child: Container(
//                                 alignment: Alignment.topLeft,
//                                 child: Text(
//                                   cComponents.title,
//                                   overflow: TextOverflow.ellipsis,
//                                   style: Theme.of(context).textTheme.bodyText1,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               flex: 1,
//                               child: Container(
//                                 alignment: Alignment.topLeft,
//                                 child: Text(cComponents.secondaryText,
//                                     overflow: TextOverflow.ellipsis,
//                                     style:
//                                         Theme.of(context).textTheme.bodyText1),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Container(
//                       height: 24,
//                       width: double.infinity,
//                       alignment: Alignment.topLeft,
//                       padding: EdgeInsets.only(
//                           left: pPrimaryPaddingLR, right: pPrimaryPaddingLR),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Row(
//                               children: [
//                                 Container(
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     cComponents.tertiaryText,
//                                     style:
//                                         Theme.of(context).textTheme.bodyText1,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Expanded(
//                                   flex: 1,
//                                   child: Container(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text("${cComponents.price}",
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .bodyText1),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                               flex: 1,
//                               child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Spacer(
//                                       flex: 2,
//                                     ),
//                                     // SizedBox(
//                                     //   height: 10,
//                                     //   child: Placeholder(
//                                     //     fallbackHeight: 5,
//                                     //     fallbackWidth: 10,
//                                     //   ),
//                                     // ),
//                                     // Spacer(
//                                     //   flex: 1,
//                                     // ),
//                                     // SizedBox(
//                                     //   height: 10,
//                                     //   child: Placeholder(
//                                     //     fallbackHeight: 5,
//                                     //     fallbackWidth: 10,
//                                     //   ),
//                                     // )
//                                     Expanded(
//                                         flex: 1,
//                                         child: GestureDetector(
//                                             onTap: () {},
//                                             child: cComponents.icon1)),
//                                     Spacer(
//                                       flex: 1,
//                                     ),
//                                     Expanded(
//                                         flex: 1,
//                                         child: GestureDetector(
//                                             onTap: () {},
//                                             child: cComponents.icon2)),
//                                   ])),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ]))));
//   }
// }
