import 'package:app_vorlage_prototyp/components/buttons/rounded_icon_button.dart';
import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

class XCustomStepper extends StatefulWidget {
  XCustomStepper({
    Key? key,
    required this.lowerLimit,
    required this.upperLimit,
    required this.stepValue,
    required this.iconSize,
    required this.value,
    required this.stepperColor,
    // Color? stepperColor,
  }) :
        // _stepperColor = stepperColor ?? cBackgroundColorLight,

        super(key: key);

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  final double iconSize;
  int value;
  final Color stepperColor;
  // final Color _stepperColor;

  @override
  _XCustomStepperState createState() => _XCustomStepperState();
}

class _XCustomStepperState extends State<XCustomStepper> {
  // final Color _xstepperColor = Theme.of(context).colorScheme.onPrimary;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(
          width: widget.iconSize * 4.4, height: widget.iconSize * 1.1),
      decoration: BoxDecoration(
        //backgroundBlendMode: BlendMode.lighten,
        color: widget.stepperColor,
        borderRadius: rPrimaryButtonRadius,
        boxShadow: [
          BoxShadow(
            //TODO: CREATE CUSTOM SHADAOW COLOR FOR LIGHT AND DARK TEHEME IN  COOR SHEME
            color: black,
            // Theme.of(context).colorScheme.shadow,
            // blurRadius: 0.5,
            // spreadRadius: 0.0,
            offset: Offset(0.0, 0.2), // shadow direction: bottom right
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            // fit: FlexFit.tight,
            child: Container(
              alignment: Alignment.centerLeft,
              child: XRoundedIconButton(
                icon: Icons.remove,
                iconSize: widget.iconSize,
                onPress: () {
                  setState(() {
                    widget.value = widget.value == widget.lowerLimit
                        ? widget.lowerLimit
                        : widget.value -= widget.stepValue;
                  });
                },
              ),
            ),
          ),
          Flexible(
            flex: 2,
            // fit: FlexFit.tight,
            child: Container(
              alignment: Alignment.center,
              color: transparent,
              width: widget.iconSize * 2,
              child: Text(
                '${widget.value}',
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: XRoundedIconButton(
                icon: Icons.add,
                iconSize: widget.iconSize,
                onPress: () {
                  setState(() {
                    widget.value = widget.value == widget.upperLimit
                        ? widget.upperLimit
                        : widget.value += widget.stepValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
