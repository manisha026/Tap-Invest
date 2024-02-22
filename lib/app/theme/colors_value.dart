// coverage:ignore-file
import 'package:flutter/material.dart';

/// A list of custom color used in the application.
///
/// Will be ignored for test since all are static values and would not change.
abstract class ColorsValue {
  /// Colors
  static Color primaryColor = Color(
    primaryColorHex,
  );

  static const Color transparent = Colors.transparent;

  static const Color greenColor = Color(
    green,
  );
  static const Color titleBlackColor = Color(
    titleBlack,
  );
  static const Color borderGreyColor = Color(
    borderGrey,
  );
  static const Color blackColor = Color(
    black,
  );
  static const Color blackOpacityColor = Color(
    blackOpacity,
  );
  static const Color darkGreyColor = Color(
    darkGrey,
  );
  static const Color lightGreyColor = Color(
    lightGrey,
  );
  static const Color bgColor = Color(
    bg,
  );
  static const Color greyTextColor = Color(
    greyText,
  );
  static const Color blackTitleColor = Color(
    blackTitle,
  );
  static const Color blackPercentColor = Color(
    blackPercent,
  );
  static const Color blackCColor = Color(
    blackC,
  );
  static const Color greyHintColor = Color(
    greyHint,
  );
  static const Color blackLightColor = Color(
    blackLight,
  );
  static const Color rupeeGreyColor = Color(
    rupeeGrey,
  );
  static const Color swipeGreyColor = Color(
    swipeGrey,
  );
  static const Color greyDescriptionColor = Color(
    greyDescription,
  );
  static const Color transGreenColor = Color(
    transGreen,
  );
  // ===========================================================================

  /// Hex Values
  ///
  ///
  static int primaryColorHex = 0xffEBEBEB;
  static const int green = 0xFF15803D;
  static const int titleBlack = 0xff292929;
  static const int borderGrey = 0xFFE7E5E4;
  static const int black = 0xFF152420;
  static const int blackOpacity = 0x40152420;
  static const int darkGrey = 0xFF78716C;
  static const int lightGrey = 0xFFD6D3D1;
  static const int bg = 0XFFf7f6f3;
  static const int greyText = 0XFFb6b6b3;
  static const int blackTitle = 0xFF44403C;
  static const int blackPercent = 0xFF374151;
  static const int blackC = 0xFF000000;
  static const int greyHint = 0XFF979694;
  static const int blackLight = 0xFF475569;
  static const int rupeeGrey = 0xFFA8A29E;
  static const int swipeGrey = 0Xffe7e4e4;
  static const int greyDescription = 0xff5F5F5F;
  static const int transGreen = 0Xff126733;
}
