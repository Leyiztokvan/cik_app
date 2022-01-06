import 'package:app_vorlage_prototyp/config/modules/typography.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

// ButtonBorder
var bButtonBorderLR = 5; // LR: left and right
var bButtonBorderTB = 2; // TB: top and bottom

// Radius
BorderRadius rPrimaryButtonRadius =
    BorderRadius.circular(_rPrimaryButtonRadius);
BorderRadius rSecondaryButtonRadius =
    BorderRadius.circular(_rScondaryButtonRadius);

double _rPrimaryButtonRadius = 5;
double _rScondaryButtonRadius = 10;

// PADDING
// PADDING_BUTTON
Padding pPrimaryButtonPadding = Padding(
    padding: EdgeInsets.fromLTRB(
        _pPrimaryButtonPaddingLR,
        _pPrimaryButtonPaddingTB,
        _pPrimaryButtonPaddingLR,
        _pPrimaryButtonPaddingTB));
Padding pSecondaryButtonPadding = Padding(
  padding: EdgeInsets.fromLTRB(
      _pSecondaryButtonPaddingLR,
      _pSecondaryButtonPaddingTB,
      _pSecondaryButtonPaddingLR,
      _pSecondaryButtonPaddingTB),
);

double _pPrimaryButtonPaddingLR = 8;
double _pPrimaryButtonPaddingTB = 4;

double _pSecondaryButtonPaddingLR = 16;
double _pSecondaryButtonPaddingTB = 8;

double _ePrimaryButtonElevation = 5;
double _eSecondaryButtonElevation = 10;

// BUTTON_STYLE
// TEXT_BUTTON_LIGHT_THEME
Color _primaryThemeLight = cTextColorBlack;
Color _backgroundColorThemeLight = cButtonColorLight;
Color _onSurfaceThemeLight = brown;
Color _shadowColorThemeLight = black;

// TEXT_BUTTON_DARK_THEME
Color _primaryThemeDark = cTextColorWhite;
Color _backgroundColorThemeDark = cButtonColorDark;
Color _onSurfaceThemeDark = blue;
Color _shadowColorThemeDark = white;

TextButtonThemeData bTextButtonLightTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
  primary: cTextColorBlack,
  backgroundColor: cButtonColorLight,
  onSurface: cTextColorWhite,
  elevation: _ePrimaryButtonElevation,
  shadowColor: black,
  textStyle: buttonTextStyle,
  // shape:
  //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
));

TextButtonThemeData bTextButtonDarkTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
  primary: cTextColorWhite,
  backgroundColor: blue,
  onSurface: cTextColorBlack,
  elevation: _ePrimaryButtonElevation,
  shadowColor: white,
  textStyle: buttonTextStyle,
  // shape:
  //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
));

// TextButtonThemeData bTransparentTextButtonLightTheme = TextButtonThemeData(
//     style: TextButton.styleFrom(
//   primary: cTextColorBlack,
//   backgroundColor: transparent,
//   onSurface: coral,
//   elevation: 0,
//   shadowColor: transparent,
//   textStyle: buttonTextStyle,
//   // shape:
//   //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// ));

// ElevatedButtonThemeData _elevatedButtonTheme = ElevatedButtonThemeData(
//   style: ElevatedButton.styleFrom(
//     shape: ,
//   )
// );

OutlinedButtonThemeData bTransparentTextButtonLightTheme =
    OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
  backgroundColor: transparent,
  primary: cTextColorBlack,
  side: BorderSide.none,
));

OutlinedButtonThemeData bTransparentTextButtonDarkTheme =
    OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
  backgroundColor: transparent,
  // primary: cTextColorWhite,
  textStyle: buttonTextStyle,
  side: BorderSide.none,
));

CardTheme cardThemeDataLight = CardTheme(
  color: cBackgroundColorLight,
);

CardTheme cardThemeDataDark = CardTheme(
  color: cBackgroundColorDark,
);

FloatingActionButtonThemeData bFloatingActionButtonLightTheme =
    FloatingActionButtonThemeData(
  foregroundColor: cTextColorBlack, //foregroundColor = text color in button
  backgroundColor: cButtonColorLight,
  extendedTextStyle: buttonTextStyle,
);

FloatingActionButtonThemeData bFloatingActionButtonDarkTheme =
    FloatingActionButtonThemeData(
  foregroundColor: cTextColorWhite, //foregroundColor = text color in button
  backgroundColor: cButtonColorDark,
  extendedTextStyle: buttonTextStyle,
);

// CUSTOM_WIDGETS
// TODO: !MABY MOVE/ADD THOSE WIDGETS TO COMPONENTS
// /XTEXTBUTTON: TEXT_WITH_CAPITAL_LETTERS
// class XTextButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;
//   const XTextButton({Key? key, required this.text, required this.onPressed})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: Text(text.toUpperCase()),
//     );
//   }
// }

// /XCAPITALTEXT: TEXT_WITH_CAPITAL_LETTERS
class xCapitalText extends StatelessWidget {
  final String text;
  const xCapitalText({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase());
  }
}
