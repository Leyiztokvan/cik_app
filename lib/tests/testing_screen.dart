import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:flutter/material.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("h1 h1 h1", style: Theme.of(context).textTheme.headline1),
              Text("h2 h2 h2", style: Theme.of(context).textTheme.headline2),
              Text("h3 h3 h3", style: Theme.of(context).textTheme.headline3),
              Text("s1 s1 s1", style: Theme.of(context).textTheme.subtitle1),
              Text("s2 s2 s2", style: Theme.of(context).textTheme.subtitle2),
              Text("b1 b1 b1", style: Theme.of(context).textTheme.bodyText1),
              Text("b2 b2 b2", style: Theme.of(context).textTheme.bodyText2),
              Text("ccc ccc ccc ", style: Theme.of(context).textTheme.caption),
              Text("ooo ooo ooo", style: Theme.of(context).textTheme.overline),
              // XTextButton(text: "test", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}


