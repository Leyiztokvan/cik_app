import 'package:app_vorlage_prototyp/config/modules/buttons/button_module.dart';
import 'package:app_vorlage_prototyp/config/modules/typography.dart';
import 'package:flutter/material.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';

// ThemeData appTheme() {}

ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: lightColorScheme,
  // buttonTheme: ,
  textTheme: xTextLightTheme,
  textButtonTheme: bTextButtonLightTheme,
  outlinedButtonTheme: bTransparentTextButtonLightTheme,
  floatingActionButtonTheme: bFloatingActionButtonLightTheme,
  cardTheme: cardThemeDataLight,

  inputDecorationTheme: lightInputDecorationTheme,
  // hintColor: Colors.yellow,
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: darkColorScheme,
  // buttonTheme: ,
  textTheme: xTextDarkTheme,
  textButtonTheme: bTextButtonDarkTheme,
  outlinedButtonTheme: bTransparentTextButtonDarkTheme,
  floatingActionButtonTheme: bFloatingActionButtonDarkTheme,
  cardTheme: cardThemeDataDark,
  inputDecorationTheme: darkInputDecorationTheme,
);
// hintColor: Colors.yellow);

// COLOR_SCHEME_LIGHT
ColorScheme lightColorScheme = const ColorScheme.light(
  primary: cPrimaryColor,
  primaryVariant: chocolate,
  secondary: orange3,
  secondaryVariant: orange2,
  surface: cBackgroundColorDark,
  background: cBackgroundColorLight,
  error: errorRed,
  onPrimary: cTextColorBlack,
  onSecondary: cTextColorBlack,
  onSurface: cTextColorBlack,
  onBackground: cTextColorBlack,
  onError: white,
  brightness: Brightness.light,
);

// COLOR_SCHEME_DARK
ColorScheme darkColorScheme = const ColorScheme.dark(
  primary: blue,
  primaryVariant: bluePurple,
  secondary: purple,
  secondaryVariant: purpleDark,
  surface: cBackgroundColorLight,
  background: cBackgroundColorDark,
  error: errorRed,
  onPrimary: cTextColorWhite,
  onSecondary: cTextColorWhite,
  onSurface: cTextColorBlack,
  onBackground: cTextColorBlack,
  onError: white,
  brightness: Brightness.dark,
);

// INPUT_DECORATION_THEME, FOR TEXT INSIDE TEXT AND SIMYBOLS INSIDE A TEXT FIELD
InputDecorationTheme lightInputDecorationTheme =
    const InputDecorationTheme(hintStyle: TextStyle(color: darkGray));

InputDecorationTheme darkInputDecorationTheme =
    const InputDecorationTheme(hintStyle: TextStyle(color: lightGray));
