import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:app_vorlage_prototyp/config/modules/typography.dart';
import 'package:flutter/material.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';

// ThemeData appTheme() {}
// APP_THEME_DATA
// APP_THEME_DATA_LIGHT_THEME
ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: lightColorScheme,
  textTheme: xTextLightTheme,
  textButtonTheme: bTextButtonLightTheme,
  outlinedButtonTheme: bTransparentTextButtonLightTheme,
  floatingActionButtonTheme: bFloatingActionButtonLightTheme,
  cardTheme: cardThemeDataLight,
  iconTheme: iconThemeDataLight,
  inputDecorationTheme: lightInputDecorationTheme,
  scaffoldBackgroundColor: cScreenBackgroundColorLight,
);

// APP_THEME_DATA_DARK_THEME
ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: darkColorScheme,
  textTheme: xTextDarkTheme,
  textButtonTheme: bTextButtonDarkTheme,
  outlinedButtonTheme: bTransparentTextButtonDarkTheme,
  floatingActionButtonTheme: bFloatingActionButtonDarkTheme,
  cardTheme: cardThemeDataDark,
  iconTheme: iconThemeDataDark,
  inputDecorationTheme: darkInputDecorationTheme,
  scaffoldBackgroundColor: cScreenBackgroundColorDark,
);

// COLOR_SCHEME_LIGHT_THEME
ColorScheme lightColorScheme = const ColorScheme.light(
  primary: cPrimaryColorLightTheme,
  primaryVariant: cLightThemeDark,
  secondary: cPrimaryColorLightThemeLight,
  secondaryVariant: cLightThemeLight,
  surface: cElementBackgroundLightThemeDark,
  background: cElementBackgroundLightThemeLight,
  error: cErrorRed,
  onPrimary: cBlack,
  onSecondary: cBlack,
  onSurface: cWhite,
  onBackground: cBlack,
  onError: cWhite,
  brightness: Brightness.light,
);

// COLOR_SCHEME_DARK_THEME
ColorScheme darkColorScheme = const ColorScheme.dark(
  primary: cPrimaryColorDarkTheme,
  primaryVariant: cDarkThemeDark,
  secondary: cPrimaryColorDarkThemeLight,
  secondaryVariant: cDarkThemeLight,
  surface: cElementBackgroundDarkThemeLight,
  background: cElementBackgroundDarkThemeDark,
  error: cErrorRed,
  onPrimary: cWhite,
  onSecondary: cWhite,
  onSurface: cBlack,
  onBackground: cBlack,
  onError: cWhite,
  brightness: Brightness.dark,
);

// INPUT_DECORATION_THEME, FOR TEXT INSIDE TEXT AND SIMYBOLS INSIDE A TEXT FIELD
// INPUT_DECORATION_Light_THEME
InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    hintStyle: TextStyle(
        fontSize: fontSize - 4,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.1,
        wordSpacing: 0.2,
        color: cDarkGrey));

// INPUT_DECORATION_Dark_THEME
InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
    hintStyle: TextStyle(
        fontSize: fontSize - 4,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.1,
        wordSpacing: 0.2,
        color: cLightGrey));

//CARD_THEME_DATA
//CARD_THEME_DATA_LIGHT_THEME
CardTheme cardThemeDataLight = const CardTheme(
  color: cElementBackgroundLightThemeLight,
);

// CARD_THEME_DATA_dARK_THEME
CardTheme cardThemeDataDark = const CardTheme(
  color: cElementBackgroundDarkThemeDark,
);

//ICON_THEME_DATA
//ICON_THEME_DATA_lIGHT_THEME
IconThemeData iconThemeDataLight = const IconThemeData(
  color: cBlack,
  opacity: 1,
);

//ICON_THEME_DATA_dARK_THEME
IconThemeData iconThemeDataDark =
    const IconThemeData(color: cWhite, opacity: 1);
