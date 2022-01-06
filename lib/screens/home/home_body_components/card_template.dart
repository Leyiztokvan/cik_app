import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:app_vorlage_prototyp/screens/home/sub_screens/card_screen.dart';
import 'package:flutter/material.dart';

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
    return GestureDetector(
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
            width: 160,
            decoration: BoxDecoration(borderRadius: rPrimaryRadiusAll),
            child: Card(
                child: Column(children: [
              Container(
                  height: 110,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: mPrimaryMargin),
                  decoration: BoxDecoration(
                      borderRadius: rPrimaryRadiusAll,
                      // // border can be used (optional): e.g. when the image background is not transparent
                      border: Border.all(),
                      image: DecorationImage(
                          image: cComponents.imageData, fit: BoxFit.fitWidth))),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: pPrimaryPaddingLR, right: pPrimaryPaddingLR),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  cComponents.title,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                child: Text(cComponents.secondaryText,
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 24,
                      width: double.infinity,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                          left: pPrimaryPaddingLR, right: pPrimaryPaddingLR),
                      child: Row(
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
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("${cComponents.price}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Spacer(
                                      flex: 2,
                                    ),
                                    // SizedBox(
                                    //   height: 10,
                                    //   child: Placeholder(
                                    //     fallbackHeight: 5,
                                    //     fallbackWidth: 10,
                                    //   ),
                                    // ),
                                    // Spacer(
                                    //   flex: 1,
                                    // ),
                                    // SizedBox(
                                    //   height: 10,
                                    //   child: Placeholder(
                                    //     fallbackHeight: 5,
                                    //     fallbackWidth: 10,
                                    //   ),
                                    // )
                                    Expanded(
                                        flex: 1,
                                        // TODO: SEE IF THERE IS NEED FOR THE GESTUREDETECTOR
                                        child: GestureDetector(
                                            onTap: () {},
                                            child: cComponents.icon1)),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                            onTap: () {},
                                            child: cComponents.icon2)),
                                  ])),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]))));
  }
}
