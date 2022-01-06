import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:flutter/material.dart';

class XFloatingIconTextButton extends StatelessWidget {
  const XFloatingIconTextButton({Key? key, required this.xlabel})
      : super(key: key);

  final String xlabel;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: ePrimary,
      shape: RoundedRectangleBorder(borderRadius: rSecondaryButtonRadius),
      extendedTextStyle: Theme.of(context).textTheme.button,
      // backgroundColor: Colors.green,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      onPressed: () {
        // Respond to button press
      },
      icon: Icon(
        Icons.shopping_basket_outlined,
        size: 22,
      ),
      label: Text('$xlabel'),
    );
  }
}
