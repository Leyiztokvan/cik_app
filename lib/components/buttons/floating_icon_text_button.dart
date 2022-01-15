import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
// import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:flutter/material.dart';

class XFloatingIconTextButton extends StatelessWidget {
  const XFloatingIconTextButton({Key? key, required this.xlabel})
      : super(key: key);

  final String xlabel;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: ePrimary,
      shape: RoundedRectangleBorder(borderRadius: rPrimaryRadiusAll),
      extendedTextStyle: Theme.of(context).textTheme.button,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      onPressed: () {
        // Respond to button press
      },
      icon: Icon(
        iconShoppinpBasketOutlined,
        size: 22,
      ),
      label: Text(xlabel),
    );
  }
}
