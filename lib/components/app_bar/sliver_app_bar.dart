import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:flutter/material.dart';

class XSliverAppBar extends StatelessWidget {
  XSliverAppBar({
    Key? key,
    required bool pinned,
    required bool snap,
    required bool floating,
    required this.appBarTitle,
    required this.onPressed,
    this.leading,
    // double? expandedHeight,
    // double? collapsedHeight,
  })  : pinned = pinned,
        snap = snap,
        floating = floating,
        // _expandedHeight = expandedHeight ?? 100,
        // _collapsedHeight = collapsedHeight ?? 40,
        super(key: key);

  final bool floating;
  final bool pinned;
  final bool snap;

  final Widget appBarTitle;
  final VoidCallback onPressed;
  // final double _expandedHeight;
  // final double _collapsedHeight;
  final Widget? leading;

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
      // // collapsedHeight: _collapsedHeight,
      // // expandedHeight: _expandedHeight,
      // collapsedHeight: 58,
      // expandedHeight: 110,
      elevation: ePrimary,
      title: appBarTitle,
      centerTitle: true,
      leading: leading,
    );
  }
}
