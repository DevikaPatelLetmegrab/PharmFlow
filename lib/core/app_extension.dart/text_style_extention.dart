import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

extension TextStyleExtention on BuildContext {
  TextStyle get xl22 =>
      Theme.of(this).textTheme.displayLarge!.copyWith(fontSize: 22);
  TextStyle get xl18 =>
      Theme.of(this).textTheme.displayLarge!.copyWith(fontSize: 18);
  TextStyle get l16 =>
      Theme.of(this).textTheme.displayLarge!.copyWith(fontSize: 16);
  TextStyle get m14 =>
      Theme.of(this).textTheme.displayMedium!.copyWith(fontSize: 14);
  TextStyle get s12 =>
      Theme.of(this).textTheme.displaySmall!.copyWith(fontSize: 12);
}

extension StyleExtension on TextStyle {
  TextStyle get withPrimary => copyWith(color: AppColors.primary);
  TextStyle get withWhite => copyWith(color: AppColors.whiteColor);

  TextStyle get weight300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get weight500 => copyWith(fontWeight: FontWeight.w500);

  TextStyle get height1_5 => copyWith(height: 1.5);
  TextStyle get height2 => copyWith(height: 2);
}
