import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/home/home_body_components/category_screen_components/category_components.dart';
import 'package:app_vorlage_prototyp/screens/home/sub_screens/category_screen.dart';
import 'package:flutter/material.dart';

class XCategoryCard extends StatelessWidget {
  final XCategoryComponents xcategoryComponents;
  const XCategoryCard({
    Key? key,
    required this.context,
    required this.xcategoryComponents,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    XCategoryDetailsScreen(ccategory: xcategoryComponents)));
      },
      child: Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(borderRadius: rPrimaryRadiusAll),
        child: Card(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(
                        top: mPrimaryMargin, bottom: mPrimaryMargin),
                    decoration: BoxDecoration(
                      borderRadius: rPrimaryRadiusAll,
                      // // border can be used (optional): e.g. when the image background is not transparent
                      // border: Border.all(),
                      // If there is image for Category instead of an icon; uncomment image..., and comment FittedBox(child: iconImage)
                      // image: DecorationImage(
                      //     image:
                      //         AssetImage(xcategoryComponents.categoryImage),
                      //     fit: BoxFit.fitWidth)
                    ),
                    child: FittedBox(
                        child: Icon(
                      iconCategory,
                      color: cBlack,
                    )),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    left: mPrimaryMargin,
                    top: mPrimaryMargin,
                    right: mPrimaryMargin,
                  ),
                  child: FittedBox(
                    child: Text(
                      xcategoryComponents.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
