import 'package:flutter/material.dart';
import 'package:tap_invest/app/theme/colors_value.dart';

import 'dimens.dart';

/// A chunk of styles used in the application.
/// Will be ignored for test since all are static values and would not change.
abstract class Styles {
  static TextStyle greenSB18 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.eighteen,
      fontWeight: FontWeight.w600,
      color: ColorsValue.greenColor);

  static TextStyle green12 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.twelve,
      fontWeight: FontWeight.w500,
      color: ColorsValue.greenColor);

  static TextStyle blackSB18 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.eighteen,
      fontWeight: FontWeight.w600,
      color: ColorsValue.blackColor);

  static TextStyle black18 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.eighteen,
      fontWeight: FontWeight.w600,
      color: ColorsValue.blackCColor);

  static TextStyle black16 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.sixteen,
      fontWeight: FontWeight.w500,
      color: ColorsValue.blackColor);

  static TextStyle darkGreyColorSB18 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.eighteen,
      fontWeight: FontWeight.w600,
      color: ColorsValue.darkGreyColor);

  static TextStyle darkGreyColor14 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.fourteen,
      fontWeight: FontWeight.w400,
      color: ColorsValue.darkGreyColor);

  static TextStyle darkGreyColor10 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.ten,
      fontWeight: FontWeight.w600,
      color: ColorsValue.darkGreyColor);

  static TextStyle whiteColor10 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.ten,
      fontWeight: FontWeight.w600,
      color: Colors.white);

  static TextStyle whiteColor12 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.twelve,
      fontWeight: FontWeight.w400,
      color: Colors.white);

  static TextStyle lightGreyColor16 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.sixteen,
      fontWeight: FontWeight.w500,
      color: ColorsValue.greyTextColor);

  static TextStyle redColor16 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.ten,
      fontWeight: FontWeight.w500,
      color: Colors.red);

  static TextStyle blackTitleColor16 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.sixteen,
      fontWeight: FontWeight.w500,
      color: ColorsValue.blackTitleColor);

  static TextStyle blackTitleColor14 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.fourteen,
      fontWeight: FontWeight.w500,
      color: ColorsValue.blackTitleColor);

  static TextStyle blackTitleColor12 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.twelve,
      fontWeight: FontWeight.w400,
      color: ColorsValue.blackTitleColor);

  static TextStyle blackPercentColor16 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.sixteen,
      fontWeight: FontWeight.w500,
      color: ColorsValue.blackPercentColor);

  static TextStyle whiteColor14 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.fourteen,
      fontWeight: FontWeight.w600,
      color: Colors.white);

  static TextStyle whiteColor18 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.eighteen,
      fontWeight: FontWeight.w600,
      color: Colors.white);

  static TextStyle greyHintColor12 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.twelve,
      fontWeight: FontWeight.w600,
      color: ColorsValue.greyHintColor);

  static TextStyle blackLight12 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.twelve,
      fontWeight: FontWeight.w400,
      color: ColorsValue.blackLightColor);

  static TextStyle blackLight16 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.sixteen,
      fontWeight: FontWeight.w500,
      color: ColorsValue.blackLightColor);

  static TextStyle rupeeGrey14 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.fourteen,
      fontWeight: FontWeight.w500,
      color: ColorsValue.rupeeGreyColor);

  static TextStyle rupeeGrey24 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.twentyFour,
      fontWeight: FontWeight.w500,
      color: ColorsValue.rupeeGreyColor);

  static TextStyle black24 = TextStyle(
      fontFamily: 'Inter',
      fontSize: Dimens.twentyFour,
      fontWeight: FontWeight.w500,
      color: ColorsValue.blackColor);

  static TextStyle greyReg13 = TextStyle(
      fontFamily: 'Quicksand',
      fontSize: Dimens.thirteen,
      fontWeight: FontWeight.w400,
      color: ColorsValue.greyDescriptionColor);
}
