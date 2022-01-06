import 'package:app_vorlage_prototyp/components/app_bar/sliver_app_bar.dart';
import 'package:app_vorlage_prototyp/config/Logo/logo_draft.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

class BodyAuthentication extends StatefulWidget {
  const BodyAuthentication({Key? key}) : super(key: key);

  @override
  _BodyAuthenticationState createState() => _BodyAuthenticationState();
}

class _BodyAuthenticationState extends State<BodyAuthentication> {
  Color _color = cPrimaryColor;
  double _height = 10;
  double _width = 100;
  double _height1 = 10;
  double _width1 = 20;
  double _margin = 0;
  // double _margin1 = 0;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  MainAxisAlignment _mainAxisAlignment1 = MainAxisAlignment.end;
  MainAxisAlignment _mainAxisAlignment2 = MainAxisAlignment.start;

  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          XSliverAppBar(
              appBarTitle: Text(
                'Login',
                style: Theme.of(context).textTheme.headline2,
              ),
              floating: _floating,
              pinned: _pinned,
              snap: _snap,
              onPressed: () {}),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16,
                  // height: deviceHeight(context) * 0.04,
                  //width: deviceWidth(context) * 0.5,
                ),
                Card(
                  elevation: ePrimary,
                  child: Container(
                      color: Theme.of(context).colorScheme.background,
                      padding: pSecondaryPaddingAll,
                      child: LogoDraft()),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: bPrimaryScreenBorderLR,
                    right: bPrimaryScreenBorderLR,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: rPrimaryRadiusAll),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Container(
                                height: double.maxFinite,
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _mainAxisAlignment =
                                            _mainAxisAlignment2;
                                      });
                                    },
                                    child: Text(
                                      "LOGIN",
                                      style: Theme.of(context).textTheme.button,
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: transparent,
                                      primary: transparent,
                                      onSurface: transparent,
                                      // TODO: ADD SPLASH_FACTORY THEME DATA WHEN THERE IS TIME
                                      // splashFactory:
                                      // NoSplash => no splash (no effect) when button is tapped
                                      // NoSplash.splashFactory
                                      // InkRipple.splashFactory
                                      // InkSplash.splashFactory
                                      // ,
                                      elevation: 0,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: _height,
                                width: _width,
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    borderRadius: rPrimaryRadiusAll),
                                child: Row(
                                  mainAxisAlignment: _mainAxisAlignment,
                                  children: [
                                    AnimatedContainer(
                                      decoration: BoxDecoration(
                                        borderRadius: rPrimaryRadiusAll,
                                        color: _color,
                                      ),
                                      margin: EdgeInsets.only(
                                          left: _margin, right: _margin),
                                      height: _height1,
                                      width: _width1,
                                      duration: Duration(seconds: 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Container(
                                height: double.maxFinite,
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _mainAxisAlignment =
                                            _mainAxisAlignment1;
                                      });
                                    },
                                    child: Text(
                                      "SIGN UP",
                                      style: Theme.of(context).textTheme.button,
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: transparent,
                                      primary: transparent,
                                      onSurface: transparent,
                                      elevation: 0,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Placeholder(
                            color: cPlaceHolder,
                            fallbackHeight: 200,
                            fallbackWidth: double.infinity,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              child: Text(
                                "--> Home",
                                style: Theme.of(context).textTheme.button,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                primary: transparent,
                                onSurface: transparent,
                                elevation: 0,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]))
        ]),
      ),
    );
  }
}
