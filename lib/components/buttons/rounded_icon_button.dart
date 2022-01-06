import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

class XRoundedIconButton extends StatefulWidget {
  const XRoundedIconButton({
    Key? key,
    required this.icon,
    required this.onPress,
    required this.iconSize,
    // Color? backgroundColor,
    // Color? iconColor,
    // TODO: FIGURE OUT HOW TO PASS THE COLOR SCHEME HIER. AND NOT JUST cPrimaryColor
  }) :
        // _backgroundColor = backgroundColor ?? cPrimaryColor,
        // _iconColor = iconColor ?? cBackgroundColorLight,
        super(key: key);

  final IconData icon;
  final VoidCallback onPress;
  final double iconSize;
  // final Color _backgroundColor;
  // final Color _iconColor;

  @override
  State<XRoundedIconButton> createState() => _XRoundedIconButtonState();
}

class _XRoundedIconButtonState extends State<XRoundedIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: rPrimaryButtonRadius,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            // primary: widget._backgroundColor,
            // maximumSize: Size(widget.iconSize * 0.5, widget.iconSize * 0.5),
            elevation: 0
            // ePrimary
            ),
        onPressed: widget.onPress,
        child: Icon(
          widget.icon,
          // color: widget._iconColor,
          size: widget.iconSize * 0.8,
        ),
      ),
    );
  }
}
