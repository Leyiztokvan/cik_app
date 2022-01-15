// ignore_for_file: unused_element

import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/typography.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

// BUTTON_BORDER
double bButtonBorderLR = 5; // LR: left and right
double bButtonBorderTB = 2; // TB: top and bottom

// BUTTON_RADIUS
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
Color _backgroundColorThemeLight = cButtonBackgroundLightThemePrimary;
Color _onSurfaceThemeLight = cWhite;
Color _shadowColorThemeLight = cBlack;

// TEXT_BUTTON_DARK_THEME
Color _primaryThemeDark = cTextColorWhite;
Color _backgroundColorThemeDark = cButtonBackgroundDarkThemePrimary;
Color _onSurfaceThemeDark = cBlack;
Color _shadowColorThemeDark = cWhite;

// TEXT_BUTTON_THEME_DATA
// TEXT_BUTTON_THEME_DATA_LIGHT_THEME
TextButtonThemeData bTextButtonLightTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
  primary: cTextColorBlack,
  backgroundColor: cButtonBackgroundLightThemePrimary,
  onSurface: cTextColorWhite,
  elevation: _ePrimaryButtonElevation,
  shadowColor: cBlack,
  textStyle: buttonTextStyle,
  // shape:
  //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
));

// TEXT_BUTTON_THEME_DATA_DARK_THEME
TextButtonThemeData bTextButtonDarkTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
  primary: cTextColorWhite,
  backgroundColor: cButtonBackgroundDarkThemePrimary,
  onSurface: cTextColorBlack,
  elevation: _ePrimaryButtonElevation,
  shadowColor: cBlack,
  textStyle: buttonTextStyle,
  // shape:
  //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
));

//OUTLINED_BUTTON_THEME_DATA
//OUTLINED_BUTTON_THEME_DATA_LIGHT_THEME
OutlinedButtonThemeData bTransparentTextButtonLightTheme =
    OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
  backgroundColor: transparent,
  primary: cTextColorBlack,
  side: BorderSide.none,
));

//OUTLINED_BUTTON_THEME_DATA_DARL_THEME
OutlinedButtonThemeData bTransparentTextButtonDarkTheme =
    OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
  backgroundColor: transparent,
  // primary: cTextColorWhite,
  textStyle: buttonTextStyle,
  side: BorderSide.none,
));

//FLOATING_ACTION_BUTTON_THEME_DATA
//FLOATING_ACTION_BUTTON_THEME_DATA_LIGHT_THEME
FloatingActionButtonThemeData bFloatingActionButtonLightTheme =
    FloatingActionButtonThemeData(
  shape: RoundedRectangleBorder(borderRadius: rPrimaryRadiusAll),
  foregroundColor: cTextColorBlack, //foregroundColor = text color in button
  backgroundColor: cButtonColorLightThemePrimary,
  extendedTextStyle: buttonTextStyle,
);

//FLOATING_ACTION_BUTTON_THEME_DATA_DARK_THEME
FloatingActionButtonThemeData bFloatingActionButtonDarkTheme =
    FloatingActionButtonThemeData(
  shape: RoundedRectangleBorder(borderRadius: rPrimaryRadiusAll),
  foregroundColor: cTextColorWhite, //foregroundColor = text color in button
  backgroundColor: cButtonColorDarkThemePrimary,
  extendedTextStyle: buttonTextStyle,
);


// // ELEVATED_BUTTON_THEME_DATA
// ElevatedButtonThemeData _elevatedButtonTheme = ElevatedButtonThemeData(
//   style: ElevatedButton.styleFrom(
//     shape: ,
//   )
// );
