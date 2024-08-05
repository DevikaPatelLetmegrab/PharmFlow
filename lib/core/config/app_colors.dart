import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff015C91);
  static const Color subPrimary = Color(0xff9DA7C0);
  static const Color appBackGroundColor = AppColors.white;
  static const Color lightPrimary = Color(0xff54AEE3);
  static const Color blueEFColor = Color(0xffEFF9FF);
  static const Color appBackgroundColor = Color(0xffffffff);
  static const Color transparent = Color(0x00000000);

  static const Color whiteColor = Color(0xffffffff);
  static const Color blackColor = Color(0xff000000);
  static const Color grey78Color = Color(0xff787878);
  static const Color grey33Color = Color(0xff333333);
  static const Color greyDAColor = Color(0xffDADADA);
  static const Color borderColorGrey = Color(0xffD9D9D9);
  static const Color errorRed = Color(0xffb00020);
  static const Color red = Color(0xffEA202B);

  static MaterialColor primaryMaterialCo =
      MaterialColor(0xffDD7258, _getSwatch(AppColors.primary));

  /// white color [white]
  static const Color white = Color(0xFFffffff);

  //other
  static const Color pinkColor = Color(0xffF43F5E);

  //grey
  static const Color darkGrey = Color(0xff556771);
  static const Color grey96Color = Color(0xff969696);
  static const Color greyDEColor = Color(0xffDEDEDE);
  static const Color greyD9Color = Color(0xffD9D9D9);
  static const Color greyECColor = Color(0xffECECEC);
  static const Color greyE6Color = Color(0xffE6E6E6);
  static const Color greyE8Color = Color(0xffE8E8E8);
  static const Color greyF4Color = Color(0xffF4F5FA);

  //blue
  static const Color lightBlue = Color(0xffF1F5F9);
  static const Color blueLight = Color(0xffE4F5FF);
  static const Color pinkLight = Color(0xffF6EBE5);
  static const Color skyBlue = Color(0xffE9F6FF);
  static const Color green = Color(0xff018F36);
  static const Color gradient1 = Color(0xff0F2027);
  static const Color gradient2 = Color(0xff203A43);
  static const Color gradient3 = Color(0xff2C5364);

  static const Gradient primaryGradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        gradient1,
        gradient2,
        gradient3,
      ]);


  static Map<int, Color> _getSwatch(Color color) {
    final hslColor = HSLColor.fromColor(color);
    final lightness = hslColor.lightness;

    /// if [500] is the default color, there are at LEAST five
    /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
    /// divisor of 5 would mean [50] is a lightness of 1.0 or
    /// a color of #ffffff. A value of six would be near white
    /// but not quite.
    const lowDivisor = 6;

    /// if [500] is the default color, there are at LEAST four
    /// steps above [500]. A divisor of 4 would mean [900] is
    /// a lightness of 0.0 or color of #000000
    const highDivisor = 5;

    final lowStep = (1.0 - lightness) / lowDivisor;
    final highStep = lightness / highDivisor;

    return {
      50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
      200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
      300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
      400: (hslColor.withLightness(lightness + lowStep)).toColor(),
      500: (hslColor.withLightness(lightness)).toColor(),
      600: (hslColor.withLightness(lightness - highStep)).toColor(),
      700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
      800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
      900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
    };
  }
}
