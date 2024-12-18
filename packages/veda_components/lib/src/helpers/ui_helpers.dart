import 'dart:math';

import 'package:flutter/material.dart';

const double tinyPadding = 5.0;
const double smallPadding = 10.0;
const double mediumPadding = 25.0;
const double largePadding = 50.0;
const double veryLargePadding = 75.0;
const double massivePadding = 120.0;

//main footer desktop view
const double buttomViewHeight = 430;
const double bottomCubes = 300;
const double minSizedBoxHeight = 40;

const double bodyCompWidth = 1100;
const double imgContainedcomp = 500;
const double stackDetail = 1140;
const double propertyDesDetail = 800;

const double searchButtonWidth = 90;
const double dropButtonWidth = 200;
const double dropButtonWidth1 = 150;
const double dropButtonH1 = 45;
const double buyButtonWidth = 110;
const double stackwidgetHeight = 55;
const double bodyImgContainerHeight = 200;
const double bodyContentWidth = 880;
const double marginValue = 260;

const double imageHeight = 750;
const double stackTopSpace = 180;
const double stackTopSpace1 = 30;
const double stackTopSpace2 = 50;
const double buttonWidth1 = 170;
const double verticalDividerHeight = 100;
const double stackTopSpace3 = 100;
const double stackTopSpaceAfterRemovingTexts = 710;
const double stackCompWidth = 1050;
const double stackCompWidth1 = 800;
const double stackCompHeight1 = 160;
const double stackCompHeight2 = 60;
const double stackCompHeight3 = 70;
const double rangerWidth = 270;
const double propertyTypeH = 350;
const double propertyTypeH1 = 380;

//--------desktop view--------//
const double topPadding1 = 100;
const double buttomPadding1 = 120;
const double bestAmongComp1 = 550;
const double bestAmongComp2 = 535;
const double viewAllProp1BtnWidth = 200;
//----------desktop view--------//
const double latestPropImgWdth = 265;
const double latestPropComp1 = 490;
//--------desktop view----------//
const double propertyCardHeight = 180;
const double propertyCardWidth = 380;

//------------desktop view------//
const double aboutNepalTextFWidth = 900;
const double aboutNepalGrid = 210;
// ----------desktop view-------//
const double latestblogCompHeight = 650;
const double latestblogCompWdith = 700;

// used for tablet view

const double footerHeight = 650;
const double sizedBoxHeight = 30;
const double overlayHeight = 300;
const double buttonPadding2 = 50;
const double buttonPadding3 = 70;
const double buttonPadding4 = 120;
const double bodyCompWidth1 = 720;
const double stackTopSpace4 = 200;
const double imageHeight1 = 700;
const double stackHeightAfterRemovingTexts = 660;
//---------------------//
const double bodyCompH = 500;
const double bodyCompW = 400;
const double bodyCompH1 = 600;
const double bodyCompH2 = 300;
const double bodyCompW1 = 215;
const double bodyCompH3 = 500;
const double bodyCompW2 = 320;
//--------------------------//
const double textFieldWidth1 = 140;
const double buyBWidth1 = 80;
const double bodyCompWidth2 = 530;
const double bodyMarginValue = 190;
const double imgHeight1 = 120;

// used for mobile
const double footerHeight1 = 850;
const double verticalHeight = 220;
const double gridHeight = 580;
const double upperImgHeight = 580;
const double stackTopSpace6 = 200;

//
const double _tinySize = 5.0;
const double _smallSize = 10.0;
const double _mediumSize = 23.0;
const double _largeSize = 50.0;
const double _massiveSize = 120.0;

const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);

Widget spacedDivider = Column(
  children: const <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);

double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}

///****text theme
TextTheme textTheme(BuildContext context) => Theme.of(context).textTheme;

ColorScheme colorScheme(BuildContext context) => Theme.of(context).colorScheme;

///***------------------
Color selecteddColor(context) => colorScheme(context).onPrimaryContainer;

Color unSelectedColor(context) => colorScheme(context).onSecondaryContainer;
