/// version 1: Product image in scrollable container, when scrolled the image disapears (it is in the AppBar)
/// for version 2 see below

import 'package:app_vorlage_prototyp/components/buttons/floating_icon_text_button.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/modules/others/custom_stepper.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/home/home_body_components/card_screen_components/tab_section_screen_list.dart';
import 'package:flutter/material.dart';

class XCardDetailsScreen extends StatelessWidget {
  const XCardDetailsScreen({
    Key? key,
    required this.cComponents,
  }) : super(key: key);

  final XCardComponents cComponents;
  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = false;

  final double _expandedHeight = 180;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: Container(
        constraints: const BoxConstraints(maxWidth: double.infinity),
        margin: EdgeInsets.only(
            left: 0, right: bPrimaryScreenBorderLR + mSecondaryMarginLR),
        height: 35,
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: XCustomStepper(
                  stepperColor: Theme.of(context).colorScheme.secondary,
                  lowerLimit: 0,
                  upperLimit: 1000,
                  stepValue: 1,
                  iconSize: 24,
                  value: 0),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
                height: 32,
                // margin: EdgeInsets.only(right: 0),
                child: const XFloatingIconTextButton(
                  xlabel: 'Add to cart',
                )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: transparent,
                automaticallyImplyLeading: false,
                floating: _floating,
                pinned: _pinned,
                snap: _snap,
                expandedHeight: _expandedHeight,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Expanded(
                          child: Stack(
                              //TODO: ADD INTERACTIVE VIEWER FOR THE PICTURE, SO THE USER CAN ZOOM IN
                              children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(rPrimaryRadius),
                                    bottomRight:
                                        Radius.circular(rPrimaryRadius)),
                              ),
                              margin: EdgeInsets.only(
                                left: bPrimaryScreenBorderLR,
                                right: bPrimaryScreenBorderLR,
                                // bottom: mPrimaryMarginTB
                              ),
                              child: Hero(
                                tag: 'card-title-${cComponents.title}',
                                child: Center(
                                  child: Container(
                                    // height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.surface,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft:
                                              Radius.circular(rPrimaryRadius),
                                          bottomRight:
                                              Radius.circular(rPrimaryRadius)),
                                      // // border can be used (optional): when the image is used a background and for e.g. when the image background is not transparent
                                      // border: Border.all(),
                                    ),
                                    child: Center(
                                      // for the  the picture to fill the container as background;
                                      //use height:
                                      //       MediaQuery.of(context).size.height,
                                      //   width:MediaQuery.of(context).size.width,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft:
                                                  const Radius.circular(25),
                                              bottomRight: Radius.circular(
                                                  rPrimaryRadius)),

                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                          // borderRadius: rPrimaryRadiusAll,
                                          // image: DecorationImage(
                                          //     image: cComponents.imageData,
                                          //     fit: BoxFit.contain)
                                        ),
                                        child: FittedBox(
                                            child: Icon(
                                          iconProduct,
                                          color: cBlack,
                                          // Theme.of(context).iconTheme.color,
                                        )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: mSecondaryMarginTB + 1,
                                right: mSecondaryMarginLR,
                                child: Container(child: cComponents.icon3)),
                            Positioned(
                                top: mSecondaryMarginTB * 5,
                                right: mSecondaryMarginLR,
                                child: Container(child: cComponents.icon4)),
                          ])),
                    ]),
                  ),
                ),
              ),
            ];
          },
          body: Container(
              margin: EdgeInsets.only(
                  left: bPrimaryScreenBorderLR, right: bPrimaryScreenBorderLR),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: mSecondaryMarginLR,
                        top: mSecondaryMarginTB,
                        right: mSecondaryMarginLR,
                        bottom: 0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          fit: FlexFit.loose,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  cComponents.title,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  cComponents.secondaryText,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(cComponents.tertiaryText,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(cComponents.price,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const XTabSectionscreenList()),
                  ),
                ],
              ))),
    ));
  }
}

////.....................



// // version 2: only the tabSection is scrollable and the imag, title, subtitle stay the same
// //

// import 'package:app_vorlage_prototyp/components/buttons/floating_icon_text_button.dart';
// import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
// import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
// import 'package:app_vorlage_prototyp/config/modules/icons.dart';
// import 'package:app_vorlage_prototyp/config/modules/others/custom_stepper.dart';
// import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
// import 'package:app_vorlage_prototyp/screens/home/home_body_components/card_screen_components/tab_section_screen_list.dart';
// import 'package:flutter/material.dart';

// class XCardDetailsScreen extends StatelessWidget {
//   XCardDetailsScreen({
//     required this.cComponents,
//   });

//   final XCardComponents cComponents;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         floatingActionButton: Container(
//           constraints: BoxConstraints(maxWidth: double.infinity),
//           margin: EdgeInsets.only(left: 0, right: 32),
//           height: 30,
//           width: double.infinity,
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Flexible(
//                 child: XCustomStepper(
//                     stepperColor: Theme.of(context).colorScheme.secondary,
//                     lowerLimit: 0,
//                     upperLimit: 1000,
//                     stepValue: 1,
//                     iconSize: 24,
//                     value: 0),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                   // margin: EdgeInsets.only(right: 0),
//                   child: XFloatingIconTextButton(
//                 xlabel: 'Add to cart',
//               )),
//             ],
//           ),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
//         // appBar: AppBar(title: Text('title')),
//         body:
//             Container(
//           //height: MediaQuery.of(context).size.height * 1,
//           width: MediaQuery.of(context).size.width * 1,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Stack(
//                 //TODO: ADD INTERACTIVE VIEWER FOR THE PICTURE, SO THE USER CAN ZOOM IN
//                 children: [
//                   Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(rPrimaryRadius),
//                           bottomRight: Radius.circular(rPrimaryRadius)),
//                     ),
//                     margin: EdgeInsets.only(
//                         left: bPrimaryScreenBorderLR,
//                         right: bPrimaryScreenBorderLR,
//                         bottom: mPrimaryMarginTB),
//                     child: Hero(
//                       tag: 'card-title-${cComponents.title}',
//                       child: Center(
//                         child: Container(
//                           // height: MediaQuery.of(context).size.height * 0.3,
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).colorScheme.surface,
//                             borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(rPrimaryRadius),
//                                 bottomRight: Radius.circular(rPrimaryRadius)),
//                             // // border can be used (optional): when the image is used a background and for e.g. when the image background is not transparent
//                             // border: Border.all(),
//                           ),
//                           child: Center(                          
//                           //  // for the  the picture to fill the container as background;
//                           //     use height:
//                           //       MediaQuery.of(context).size.height,
//                           //       width:MediaQuery.of(context).size.width,
//                             child: Container(
//                               height: MediaQuery.of(context).size.height * 0.4,
//                               width: MediaQuery.of(context).size.width * 0.4,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(25),
//                                     bottomRight:
//                                         Radius.circular(rPrimaryRadius)),

//                                 color: Theme.of(context).colorScheme.surface,
//                                 // borderRadius: rPrimaryRadiusAll,
//                                 // image: DecorationImage(
//                                 //     image: cComponents.imageData,
//                                 //     fit: BoxFit.contain)
//                               ),
//                               child: FittedBox(
//                                   child: Icon(
//                                 iconProduct,
//                                 color: cBlack,
//                                 // Theme.of(context).iconTheme.color,
//                               )),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     alignment: Alignment.topRight,
//                     margin: EdgeInsets.only(
//                       left: 0,
//                       // top: mTertiaryMarginTB + 1,
//                       right: mSecondaryMarginLR,
//                       bottom: 0,
//                     ),
//                     child: Column(
//                       children: [
//                         Container(child: cComponents.icon3),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(child: cComponents.icon4),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               Container(
//                 margin: EdgeInsets.only(
//                     left: mSecondaryMarginLR,
//                     top: 0,
//                     right: mSecondaryMarginLR,
//                     bottom: 0),
//                 child: Row(
//                   children: [
//                     Flexible(
//                       flex: 2,
//                       fit: FlexFit.tight,
//                       child: Column(
//                         children: [
//                           Container(
//                             alignment: Alignment.topLeft,
//                             child: Text(
//                               cComponents.title,
//                               style: Theme.of(context).textTheme.subtitle1,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               cComponents.secondaryText,
//                               style: Theme.of(context).textTheme.bodyText2,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.loose,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 alignment: Alignment.centerRight,
//                                 child: Text(cComponents.tertiaryText,
//                                     style:
//                                         Theme.of(context).textTheme.subtitle2),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Container(
//                                 alignment: Alignment.centerRight,
//                                 child: Text('${cComponents.price}',
//                                     style:
//                                         Theme.of(context).textTheme.subtitle2),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Flexible(
//                 flex: 1,
//                 // fit: FlexFit.tight,
//                 child: Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     child: XTabSectionscreenList()),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
