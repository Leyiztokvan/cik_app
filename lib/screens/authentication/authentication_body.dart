import 'package:app_vorlage_prototyp/components/screensize_reducers.dart';
import 'package:app_vorlage_prototyp/config/Logo/logo_draft.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/authentication/authentication_body_components/login_authentication_card.dart';
import 'package:app_vorlage_prototyp/screens/authentication/authentication_body_components/sign_up_authentication_card.dart';
import 'package:flutter/material.dart';

class BodyAuthentication extends StatefulWidget {
  const BodyAuthentication({Key? key}) : super(key: key);

  @override
  _BodyAuthenticationState createState() => _BodyAuthenticationState();
}

class _BodyAuthenticationState extends State<BodyAuthentication> {
  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,

        ///this when there is only a pinned AppBar with title
        ///it works with combination of SingleChildScrollView which is in XAuthenticationFormField()
        /// so just put XAuthenticationFormField() in Container in the body of the Scaffold
        // appBar: XAppBar(
        //   leading: GestureDetector(
        //     child: Icon(iconBackwardArrow),
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        //   appBarTitle: Text(
        //     'Login',
        //     style: Theme.of(context).textTheme.headline2,
        //   ),
        //   floating: _floating,
        //   pinned: _pinned,
        //   snap: _snap,
        //   centerTitle: true,
        // ),
        body:
            ////this work with customScrollView
            CustomScrollView(slivers: [
          SliverAppBar(
              pinned: _pinned,
              floating: _floating,
              snap: _snap,
              backgroundColor: transparent,
              collapsedHeight: 120,
              expandedHeight:
                  // MediaQuery.of(context).size.height * 0.35,
                  120,
              flexibleSpace: Container(
                alignment: Alignment.topCenter,
                child: Card(
                  elevation: ePrimary,
                  child: Container(
                      constraints: const BoxConstraints(
                        minWidth: 100,
                        // MediaQuery.of(context).size.width * 0.2,
                        minHeight: 100,
                        // (MediaQuery.of(context).size.width * 0.2) + 30,
                        maxHeight: 120,
                        // (MediaQuery.of(context).size.width * 0.2) + 30,
                        maxWidth: 120,
                      ),
                      // MediaQuery.of(context).size.width * 0.2),
                      color: Theme.of(context).colorScheme.background,
                      padding: pSecondaryPaddingAll,
                      child: const XLogoDraft()),
                ),
              )),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  child: const XAuthenticationFormField(),
                ),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}

enum WidgetMarker { signUP, login }

class XAuthenticationFormField extends StatefulWidget {
  const XAuthenticationFormField({Key? key}) : super(key: key);

  @override
  _XAuthenticationFormFieldState createState() =>
      _XAuthenticationFormFieldState();
}

class _XAuthenticationFormFieldState extends State<XAuthenticationFormField>
    with SingleTickerProviderStateMixin<XAuthenticationFormField> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.login;
  late AnimationController _controller;
  late Animation<double> _animation;

  final double _height = 10;
  final double _width = 100;
  final double _height1 = 10;
  final double _width1 = 20;
  final double _margin = 0;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  final MainAxisAlignment _mainAxisAlignment1 = MainAxisAlignment.end;
  final MainAxisAlignment _mainAxisAlignment2 = MainAxisAlignment.start;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            // Card(
            //   elevation: ePrimary,
            //   child: Container(
            //       constraints: const BoxConstraints(
            //           minWidth: 90,
            //           minHeight: 100,
            //           maxHeight: 100,
            //           maxWidth: 90),
            //       color: Theme.of(context).colorScheme.background,
            //       padding: pSecondaryPaddingAll,
            //       child: XLogoDraft()),
            // ),
            SizedBox(
              height: deviceHeight(context) * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: bPrimaryScreenBorderLR,
                right: bPrimaryScreenBorderLR,
              ),
              child: Card(
                elevation: ePrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(rSecondaryRadius),
                  ),
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
                                      _mainAxisAlignment = _mainAxisAlignment2;
                                    });
                                    setState(() {
                                      selectedWidgetMarker = WidgetMarker.login;
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
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  borderRadius: rPrimaryRadiusAll),
                              child: Row(
                                mainAxisAlignment: _mainAxisAlignment,
                                children: [
                                  AnimatedContainer(
                                    decoration: BoxDecoration(
                                      borderRadius: rPrimaryRadiusAll,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    margin: EdgeInsets.only(
                                        left: _margin, right: _margin),
                                    height: _height1,
                                    width: _width1,
                                    duration: const Duration(seconds: 1),
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
                                      _mainAxisAlignment = _mainAxisAlignment1;
                                    });
                                    setState(() {
                                      selectedWidgetMarker =
                                          WidgetMarker.signUP;
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
                    Container(
                      // height: 304,
                      child: Column(
                        children: [
                          FutureBuilder(
                            future: _playAnimation(),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              return getCustomContainer();
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.login:
        return getLoginContainer();
      case WidgetMarker.signUP:
        return getSignUPContainer();
    }
  }

  Widget getSignUPContainer() {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(rSecondaryRadius),
              bottomRight: Radius.circular(rSecondaryRadius)),
        ),
        child: const XSignUpAuthenticationCard(),
      ),
    );
  }

  Widget getLoginContainer() {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(rSecondaryRadius),
              bottomRight: Radius.circular(rSecondaryRadius)),
        ),
        child: const XLoginAuthenticationCard(),
      ),
    );
  }
}
