import 'package:flutter/material.dart';

// PrimaryBorder
double bPrimaryBorder = 8;
double bSecondaryBorder = 15;
// ScreenBorder

double bPrimaryScreenBorderLR = 10; // LR: left and right
double bPrimaryScreenBorderTB = 5;

EdgeInsets bScreenBorder = EdgeInsets.fromLTRB(
    _bScreenBorderLR, _bScreeBorderTB, _bScreenBorderLR, _bScreeBorderTB);
double _bScreenBorderLR = 10; // LR: left and right
double _bScreeBorderTB = 0;

// // ButtonBorder
// var bButtonBorderLR = 5;
// var bButtonBorderTB = 2; // TB: top and bottom

//.....
// Radius
double rPrimaryRadius = 5;
double rSecondaryRadius = 10;
BorderRadius rPrimaryRadiusAll = BorderRadius.circular(5);
BorderRadius rSecondaryRadiusAll = BorderRadius.circular(10);
// double rPrimaryButtonRadius = 5;
// double rScondaryButtonRadius = 10;

//.....
// PADDING

double pPrimaryPadding = 5;
double pSecondaryPadding = 10;

double pPrimaryPaddingTB = 5;
double pSecondaryPaddingTB = 10;
double pPrimaryPaddingLR = 8;
double pSecondaryPaddingLR = 16;

EdgeInsets pPrimaryPaddingAll = EdgeInsets.all(_pPrimaryPadding);
double _pPrimaryPadding = 5;
EdgeInsets pSecondaryPaddingAll = EdgeInsets.all(_pSecondaryPadding);
double _pSecondaryPadding = 10;

// EdgeInsets pPrimaryPaddingLR =
//     EdgeInsets.only(left: _pPrimaryPaddingLR, right: _pPrimaryElementPaddingLR);
// double _pPrimaryPaddingLR = 8;

// EdgeInsets pSecondaryPaddingLR = EdgeInsets.all(_pSecondaryPaddingLR);
// double _pSecondaryPaddingLR = 16;

// PADDING_ELEMENT
// PADDING_ELEMENT_PRIMARY
EdgeInsets pPrimaryElementPaddingLTRB = EdgeInsets.fromLTRB(
    _pPrimaryElementPaddingLR,
    _pPrimaryElementPaddingTB,
    _pPrimaryElementPaddingLR,
    _pPrimaryElementPaddingTB);

double _pPrimaryElementPaddingLR = 6;
double _pPrimaryElementPaddingTB = 2;

// PADDING_ELEMENT_SECONDARY
EdgeInsets pSecondaryElementPaddingLTRB = EdgeInsets.fromLTRB(
    _pSecondaryElementPaddingLR,
    _pSecondaryElementPaddingTB,
    _pSecondaryElementPaddingLR,
    _pSecondaryElementPaddingTB);

double _pSecondaryElementPaddingLR = 12;
double _pSecondaryElementPaddingTB = 4;

// PADDING_ELEMENT_TERRIARY
EdgeInsets pTertiaryElementPaddingLTRB = EdgeInsets.fromLTRB(
    _pTertiaryElementPaddingLR,
    _pTertiaryElementPaddingTB,
    _pTertiaryElementPaddingLR,
    _pTertiaryElementPaddingTB);

double _pTertiaryElementPaddingLR = 25;
double _pTertiaryElementPaddingTB = 0;

// PADDING_BUTTON
var pPrimaryButtonPadding = 0;
var pSecondaryButtonPadding = 0;

// LR: left and right
var pButtonPaddingLR = 8;
// TB: top and bottom
var pButtonPaddingTB = 4;

// MARGIN

double mPrimaryMargin = 5;
double mSecondaryMargin = 10;
double mPrimaryMarginLR = 8;
double mSecondaryMarginLR = 16;
double mTertiaryMarginLR = 24;
double mPrimaryMarginTB = 5;
double mSecondaryMarginTB = 10;
double mTertiaryMarginTB = 15;

EdgeInsets mPrimaryMarginLTRB = EdgeInsets.fromLTRB(
    _mPrimaryMarginLR, _mPrimaryMarginTB, _mPrimaryMarginLR, _mPrimaryMarginTB);

double _mPrimaryMargin = 5;
double _mScondarMargin = 10;
double _mPrimaryMarginLR = 16;
double _mSecondaryMarginLR = 24;
double _mPrimaryMarginTB = 5;
double _mSecondarMarginTB = 10;

// MARGIN_HOME_SEARCH_BAR
EdgeInsets mHomeSearchBar = EdgeInsets.fromLTRB(
    _mPrimaryMarginLR, _mPrimaryMarginTB, _mPrimaryMarginLR, _mPrimaryMarginTB);

// ELEVATION
double ePrimary = 5;
double eScondary = 10;

// SPACING
double sPrimary = 5;
double sSecondary = 10;
double sTertiary = 15;

// ICON_SIZE

double iPrimary = 10;
double iSecondary = 20;
double iTertiary = 30;
