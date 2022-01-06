import 'package:app_vorlage_prototyp/components/search_bar/custom_search_bar.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

class XHomepageAppBar extends StatelessWidget {
  const XHomepageAppBar({
    Key? key,
    required bool floating,
    required bool pinned,
    required bool snap,
    required this.title,
    required this.subTitle,
    required this.titleStyle,
    required this.subTitleStyle,
    required this.imageData,
    required this.onPressed,
  })  : floating = floating,
        pinned = pinned,
        snap = snap,
        super(key: key);

  final bool floating;
  final bool pinned;
  final bool snap;

  final String imageData;
  final VoidCallback onPressed;
  final String subTitle;
  final String title;
  final titleStyle;
  final subTitleStyle;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(rSecondaryRadius),
            bottomRight: Radius.circular(rSecondaryRadius),
          ),
        ),
        forceElevated: true,
        excludeHeaderSemantics: true,
        automaticallyImplyLeading: false,
        floating: floating,
        pinned: pinned,
        snap: snap,
        collapsedHeight: 65,
        expandedHeight: 135,
        elevation: ePrimary,
        title: Card(
          elevation: 1,
          shadowColor: black,
          margin: EdgeInsets.only(top: mPrimaryMarginTB),
          child: Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: transparent,
              borderRadius: rSecondaryRadiusAll,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Card(
                    elevation: 0,
                    // color: transparent,
                    child: Container(
                      height: 39,
                      width: MediaQuery.of(context).size.width * 1,
                      // color: transparent,
                      child: XSearchBar(),
                    ),
                  ),
                ),
                Card(
                  // elevation: 0,
                  child: Container(
                    height: 34,
                    width: 1,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: rSecondaryRadiusAll,
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: transparent,
                        borderRadius: rSecondaryRadiusAll,
                      ),
                      child: IconButton(
                        onPressed: onPressed,
                        icon: Icon(Icons.tune),
                        color: Theme.of(context).colorScheme.primary,
                      )),
                ),
              ],
            ),
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
            background: Container(
                margin: mHomeSearchBar,
                alignment: Alignment.bottomCenter,
                color: Theme.of(context).colorScheme.primary,
                child: Container(
                  decoration: BoxDecoration(
                    color: transparent,
                    borderRadius: rPrimaryRadiusAll,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: mPrimaryMargin,
                                  bottom: mPrimaryMargin,
                                ),
                                child: Text(
                                  title,
                                  style: titleStyle,
                                ),
                              ),
                              Container(
                                child: Text(
                                  subTitle,
                                  style: subTitleStyle,
                                ),
                              ),
                            ],
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(
                                bottom: mPrimaryMargin,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imageData),
                                    fit: BoxFit.contain),
                                borderRadius: rPrimaryRadiusAll,
                                border: Border.all(
                                  width: 2,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}
