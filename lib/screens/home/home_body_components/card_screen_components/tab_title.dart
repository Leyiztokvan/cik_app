import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:flutter/material.dart';

class XHomepageTabTitle extends StatelessWidget {
  final XCardComponents cComponents;
  const XHomepageTabTitle({
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
