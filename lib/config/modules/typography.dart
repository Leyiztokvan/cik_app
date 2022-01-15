// ignore_for_file: unused_element

import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

// FONT_FAMILY,_SIZE,_WEIGHT,_STYLE
const String _fontFamily = 'Bitter';
const double fontSize = _fontSize;
const double _fontSize = 16;
const FontWeight _fontWeight = FontWeight.normal;
const FontStyle _fontStyle = FontStyle.normal;
const FontStyle _fontStyleItalic = FontStyle.italic;

// HEADLINE1-3_FONT_SIZE,_WEIGHT
var _h1FontSize = _fontSize + 12;
var _h1FontWeight = FontWeight.w900;
var _h2FontSize = _fontSize + 10;
var _h2FontWeight = FontWeight.w800;
var _h3FontSize = _fontSize + 6;
var _h3FontWeight = FontWeight.w800;

var _h6FontSize = _fontSize * 2;
var _h6FontWeight = FontWeight.bold;

// SUBTITLE1,_SUBTITLE2
var _s1FontSize = _fontSize + 4;
var _s1FontWeight = FontWeight.w700;

var _s2FontSize = _fontSize + 2;
var _s2FontWeight = FontWeight.w600;

// BODY_TEXT_1,_2
var _b1FontSize = _fontSize;
var _b1FontWeight = FontWeight.w500;

var _b2FontSize = _fontSize;
var _b2FontWeight = FontWeight.w500;

// BUTTON
// const _buttonFontStyle = FontStyle.normal;
var _buttonFontSize = _fontSize + 2;
var _buttonFontWeight = FontWeight.w600;

// CAPTION
var _cFontSize = _fontSize - 2;
var _cFontWeight = FontWeight.w300;

// OVERLINE// FOR_INPUT_TEXT/HINT_TEXT_IN_SERACH_BAR_ETC...
var _oFontSize = _fontSize - 1;
var _oFontWeight = FontWeight.w400;

// LETTER_SPACING
var _hDefaultLetterSpacing = 1.0;
var _sDefaultLetterSpacing = 0.5;
var _bDefaultLetterSpacing = 0.2;
var _cDefaultLetterSpacing = 0.1;
var _oDefaultLetterSpacing = 0.5;
var _buttonDefaultLetterSpacing = 0.1;

// WORD_SPACING
var _hDefaultWordSpacing = 0.75;
var _sDefaultWordSpacing = 0.6;
var _bDefaultWordSpacing = 0.5;
var _cDefaultWordSpacing = 0.2;
var _oDefaultWordSpacing = 0.2;
var _buttonDefaultWordSpacing = 0.1;

// DEFAULT/lIGHT_TEXT_THEME
TextTheme xTextLightTheme = TextTheme(
    headline1: TextStyle(
      fontSize: _h1FontSize,
      fontWeight: _h1FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    headline2: TextStyle(
      fontSize: _h2FontSize,
      fontWeight: _h2FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    headline3: TextStyle(
      fontSize: _h3FontSize,
      fontWeight: _h3FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    headline6: TextStyle(
      fontSize: _h6FontSize,
      fontWeight: _h6FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    subtitle1: TextStyle(
      fontSize: _s1FontSize,
      fontWeight: _s1FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _sDefaultLetterSpacing,
      wordSpacing: _sDefaultWordSpacing,
    ),
    subtitle2: TextStyle(
      fontSize: _s2FontSize,
      fontWeight: _s2FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _sDefaultLetterSpacing,
      wordSpacing: _sDefaultWordSpacing,
    ),
    bodyText1: TextStyle(
      fontSize: _b1FontSize,
      fontWeight: _b1FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _bDefaultLetterSpacing,
      wordSpacing: _bDefaultWordSpacing,
    ),
    bodyText2: TextStyle(
      fontSize: _b2FontSize,
      fontWeight: _b2FontWeight,
      fontStyle: _fontStyleItalic,
      letterSpacing: _bDefaultLetterSpacing,
      wordSpacing: _bDefaultWordSpacing,
    ),
    caption: TextStyle(
      fontSize: _cFontSize,
      fontWeight: _cFontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _cDefaultLetterSpacing,
      wordSpacing: _cDefaultWordSpacing,
      color: cErrorRed,
    ),
    overline: TextStyle(
      fontSize: _oFontSize,
      fontWeight: _oFontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _oDefaultLetterSpacing,
      wordSpacing: _oDefaultWordSpacing,
    ),
    button: TextStyle(
      fontSize: _buttonFontSize,
      fontWeight: _buttonFontWeight,
      // fontStyle: _fontStyle,
      letterSpacing: _buttonDefaultLetterSpacing,
      wordSpacing: _buttonDefaultWordSpacing,
    )).apply(
  fontFamily: _fontFamily,
  displayColor: cTextColorBlack,
  bodyColor: cTextColorBlack,
);

// DARK_TEXT_THEME
TextTheme xTextDarkTheme = TextTheme(
    headline1: TextStyle(
      fontSize: _h1FontSize,
      fontWeight: _h1FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    headline2: TextStyle(
      fontSize: _h2FontSize,
      fontWeight: _h2FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    headline3: TextStyle(
      fontSize: _h3FontSize,
      fontWeight: _h3FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    headline6: TextStyle(
      fontSize: _h6FontSize,
      fontWeight: _h6FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _hDefaultLetterSpacing,
      wordSpacing: _hDefaultWordSpacing,
    ),
    subtitle1: TextStyle(
      fontSize: _s1FontSize,
      fontWeight: _s1FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _sDefaultLetterSpacing,
      wordSpacing: _sDefaultWordSpacing,
    ),
    subtitle2: TextStyle(
      fontSize: _s2FontSize,
      fontWeight: _s2FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _sDefaultLetterSpacing,
      wordSpacing: _sDefaultWordSpacing,
    ),
    bodyText1: TextStyle(
      fontSize: _b1FontSize,
      fontWeight: _b1FontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _bDefaultLetterSpacing,
      wordSpacing: _bDefaultWordSpacing,
    ),
    bodyText2: TextStyle(
      fontSize: _b2FontSize,
      fontWeight: _b2FontWeight,
      fontStyle: _fontStyleItalic,
      letterSpacing: _bDefaultLetterSpacing,
      wordSpacing: _bDefaultWordSpacing,
    ),
    caption: TextStyle(
      fontSize: _cFontSize,
      fontWeight: _cFontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _cDefaultLetterSpacing,
      wordSpacing: _cDefaultWordSpacing,
      color: cErrorRed,
    ),
    overline: TextStyle(
      fontSize: _oFontSize,
      fontWeight: _oFontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _oDefaultLetterSpacing,
      wordSpacing: _oDefaultWordSpacing,
    ),
    button: TextStyle(
      fontSize: _buttonFontSize,
      fontWeight: _buttonFontWeight,
      // fontStyle: _fontStyle,
      letterSpacing: _buttonDefaultLetterSpacing,
      wordSpacing: _buttonDefaultWordSpacing,
    )).apply(
  fontFamily: _fontFamily,
  displayColor: cTextColorWhite,
  bodyColor: cTextColorWhite,
);

// BUTTON_TEXT_STYLE
TextStyle buttonTextStyle = TextStyle(
  // fontStyle: _buttonFontStyle,
  fontSize: _buttonFontSize,
  fontWeight: _buttonFontWeight,
  letterSpacing: _buttonDefaultLetterSpacing,
  wordSpacing: _buttonDefaultWordSpacing,
);
