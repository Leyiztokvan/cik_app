import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:flutter/material.dart';

class LogoDraft extends StatelessWidget {
  const LogoDraft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: <Widget>[
            Padding(
              padding: pPrimaryElementPaddingLTRB,
            ),
            Text(
              'LOGO',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                // fontFamily: 'Bitter',
                // fontWeight: FontWeight.w600
              ),
            ),
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                image: DecorationImage(
                  image: AssetImage(iconLogo),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
