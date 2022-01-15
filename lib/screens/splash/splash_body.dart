import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

double _containerHeight = 140;
double _containerWidth = 140;

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() async {
    await Future.delayed(const Duration(milliseconds: 1400), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Container(
          constraints: BoxConstraints(
              minWidth: _containerWidth,
              minHeight: _containerHeight,
              maxHeight: _containerHeight,
              maxWidth: _containerWidth),
          child: Card(
            elevation: ePrimary,
            child: Container(
                color: Theme.of(context).colorScheme.background,
                padding: pSecondaryPaddingAll,
                child: const XLogoDraftSplash()),
          ),
        ),
      ),
    );
  }
}

class XLogoDraftSplash extends StatelessWidget {
  const XLogoDraftSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: <Widget>[
          // Padding(
          // padding: pPrimaryElementPaddingLTRB,
          // ),
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
