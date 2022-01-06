import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:flutter/material.dart';

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  XAppBar(
      {Key? key,
      required this.appBarTitle,
      required bool pinned,
      required bool snap,
      required bool floating,
      required VoidCallback onPressed,
      required bool centerTitle})
      : pinned = pinned,
        snap = snap,
        floating = floating,
        centerTitle = centerTitle,
        preferredSize = Size.fromHeight(60.0),
        super(key: key);

  final bool centerTitle;
  final bool floating;
  final bool pinned;
  final bool snap;
  final Widget appBarTitle;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: appBarTitle,
      centerTitle: centerTitle,
      elevation: ePrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(rSecondaryRadius),
          bottomRight: Radius.circular(rSecondaryRadius),
        ),
      ),
      excludeHeaderSemantics: true,
    );
  }
}
