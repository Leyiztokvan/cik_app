// ignore_for_file: unused_element

import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:flutter/material.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ThemeData localTheme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          body: Container(
              constraints: BoxConstraints.tightFor(
                  height: size.height, width: size.width),
              child: Padding(
                padding: EdgeInsets.only(
                    left: bPrimaryScreenBorderLR,
                    right: bPrimaryScreenBorderLR),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.04),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            constraints: const BoxConstraints(
                                minWidth: 100,
                                minHeight: 100,
                                maxHeight: 120,
                                maxWidth: 120),
                            child: Card(
                              elevation: ePrimary,
                              child: Container(
                                  alignment: Alignment.center,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  padding: pSecondaryPaddingAll,
                                  child: const XLogoDraftWelcomeScreen()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 5,
                            fit: FlexFit.loose,
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(
                                  left: pSecondaryPaddingLR,
                                  right: bPrimaryScreenBorderLR),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  const Spacer(),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Slogan/TEXT",
                                        maxLines: 2,
                                        style: localTheme.textTheme.headline2),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        //Keep the text short! not longer than two short scentences. maxLines: 2,
                                        text:
                                            //before "\n" first line, after "\n" second line
                                            "Text_text_text_text_text \n_text_text_text_text_text_text_text",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                        // children: <InlineSpan>[]
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: size.width * 0.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                      // minWidth: size.width * 0.5,
                                      minHeight: 40,
                                      maxHeight: 40,
                                      // maxWidth: size.width * 0.5,
                                    ),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, '/authentication');
                                        },
                                        style: Theme.of(context)
                                            .textButtonTheme
                                            .style,
                                        child: Text(
                                          "Start".toUpperCase(),
                                          // style: ,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                  ],
                ),
              ))),
    );
  }
}

class XLogoDraftWelcomeScreen extends StatelessWidget {
  const XLogoDraftWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              padding: EdgeInsets.only(top: pPrimaryPaddingTB),
              child: FittedBox(
                child: Text(
                  'LOGO',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                image: DecorationImage(
                  image: AssetImage(iconLogo),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
