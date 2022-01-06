import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:flutter/material.dart';

class XTabTitle extends StatelessWidget {
  final XCardComponents cComponents;
  const XTabTitle({
    Key? key,
    required this.cComponents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        child: Text(
          cComponents.tabTitle,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
