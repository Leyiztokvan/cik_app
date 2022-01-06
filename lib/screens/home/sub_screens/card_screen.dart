import 'package:app_vorlage_prototyp/components/buttons/floating_icon_text_button.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:app_vorlage_prototyp/config/modules/others/custom_stepper.dart';
import 'package:app_vorlage_prototyp/screens/home/home_body_components/card_screen_components/tab_section_screen_list.dart';
import 'package:flutter/material.dart';

class XCardDetailsScreen extends StatelessWidget {
  XCardDetailsScreen({
    required this.cComponents,
  });

  final XCardComponents cComponents;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: Container(
            constraints: BoxConstraints(maxWidth: double.infinity),
            margin: EdgeInsets.only(left: 0, right: 32),
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: XCustomStepper(
                      stepperColor: Theme.of(context).colorScheme.secondary,
                      lowerLimit: 0,
                      upperLimit: 1000,
                      stepValue: 1,
                      iconSize: 24,
                      value: 0),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                    // margin: EdgeInsets.only(right: 0),
                    child: XFloatingIconTextButton(
                  xlabel: 'Add to cart',
                )),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          // appBar: AppBar(title: Text('title')),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    //!caution: this cause a render flex because it gives a limited height
                    //height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      children: [
                        Stack(
                          //TODO: ADD INTERACTIVE VIEWER FOR THE PICTURE, SO THE USER CAN ZOOM IN
                          children: [
                            Hero(
                              tag: 'card-title-${cComponents.title}',
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  margin: EdgeInsets.only(
                                      left: bPrimaryScreenBorderLR,
                                      right: bPrimaryScreenBorderLR,
                                      bottom: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: cComponents.imageData,
                                          fit: BoxFit.fitWidth))),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                left: 0,
                                top: mTertiaryMarginTB + 1,
                                right: mSecondaryMarginLR,
                                bottom: 0,
                              ),
                              child: Column(
                                children: [
                                  Container(child: cComponents.icon3),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(child: cComponents.icon4),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: mSecondaryMarginLR,
                              top: 0,
                              right: mSecondaryMarginLR,
                              bottom: 0),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        cComponents.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        cComponents.secondaryText,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: Text(cComponents.tertiaryText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: Text('${cComponents.price}',
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
                        // XTabSection(
                        // ),
                        XTabSectionscreenList()
                      ],
                    ),
                  ),
                ]),
              )
            ],
          )),
    );
  }
}
