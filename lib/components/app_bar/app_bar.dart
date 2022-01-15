import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:flutter/material.dart';

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  XAppBar(
      {Key? key,
      required this.appBarTitle,
      required bool pinned,
      required bool snap,
      required bool floating,
      // required VoidCallback onPressed,
      required bool centerTitle,
      this.leading})
      : pinned = pinned,
        snap = snap,
        floating = floating,
        centerTitle = centerTitle,
        preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  final bool centerTitle;
  final bool floating;
  final bool pinned;
  final bool snap;
  final Widget appBarTitle;
  final Widget? leading;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading,
      backgroundColor: Theme.of(context).colorScheme.primary,
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
