import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context,
    {double dividedBy = 1, double reducedBy = 0.0}) {
  return (screenSize(context).height - reducedBy) / dividedBy;
}

double screenWidth(BuildContext context,
    {double dividedBy = 1, double reducedBy = 0.0}) {
  return (screenSize(context).width - reducedBy) / dividedBy;
}

double screenHeightExcludingAppBar(BuildContext context,
    {double dividedBy = 1}) {
  return screenHeight(context, dividedBy: dividedBy, reducedBy: kToolbarHeight);
}

double screenWidthExcludingAppBar(BuildContext context,
    {double dividedBy = 1}) {
  return screenWidth(context,
      dividedBy: dividedBy,
      reducedBy: kToolbarHeight + kBottomNavigationBarHeight);
}

double screenHeightExcludingAppBarAndBottomNavigationBar(BuildContext context,
    {double dividedBy = 1}) {
  return screenHeight(context, dividedBy: dividedBy, reducedBy: kToolbarHeight);
}

double screenWidthExcludingAppBarAndBottomNavigationBar(BuildContext context,
    {double dividedBy = 1}) {
  return screenWidth(context,
      dividedBy: dividedBy,
      reducedBy: kToolbarHeight + kBottomNavigationBarHeight);
}

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
