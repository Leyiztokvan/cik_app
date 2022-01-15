import 'package:app_vorlage_prototyp/components/search_bar/custom_search_bar.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

class XAppBarWithSearch extends StatelessWidget implements PreferredSizeWidget {
  const XAppBarWithSearch({
    Key? key,
    required this.appBarTitle,
    required bool pinned,
    required bool snap,
    required bool floating,
    required bool centerTitle,
    this.elevation,
    this.leading,
  })  : pinned = pinned,
        snap = snap,
        floating = floating,
        centerTitle = centerTitle,
        preferredSize = const Size.fromHeight(100.0),
        super(key: key);

  final bool centerTitle;
  final bool floating;
  final bool pinned;
  final bool snap;
  final Widget appBarTitle;
  final double? elevation;
  final Widget? leading;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      leading: leading,
      title: appBarTitle,
      centerTitle: centerTitle,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
            margin: EdgeInsets.only(bottom: mPrimaryMarginTB),
            alignment: Alignment.bottomCenter,
            color: transparent,
            child: Card(
              margin: EdgeInsets.only(
                left: mSecondaryMarginLR,
                right: mSecondaryMarginLR,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: rSecondaryRadiusAll,
                ),
                child: Card(
                  elevation: 0,
                  child: Container(
                    height: 39,
                    child: XSearchBar(),
                  ),
                ),
              ),
            )),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(rSecondaryRadius),
          bottomRight: Radius.circular(rSecondaryRadius),
        ),
      ),
      excludeHeaderSemantics: true,
      elevation: elevation,
    );
  }
}
