import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

class XTitleAndSeeAllWidget extends StatelessWidget {
  const XTitleAndSeeAllWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onPrssed,
  }) : super(key: key);

  final VoidCallback onPrssed;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: pPrimaryPaddingLR,
        top: mPrimaryMarginTB,
        right: pSecondaryPaddingLR,
      ),
      height: 40,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: rPrimaryRadiusAll,
        color: transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(title, style: Theme.of(context).textTheme.headline3),
          ),
          FittedBox(
            alignment: Alignment.centerRight,
            child: OutlinedButton(
              onPressed: onPrssed,
              child: Text(
                subTitle,
                style: Theme.of(context).textTheme.button,
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
