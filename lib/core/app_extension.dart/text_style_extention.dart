import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

extension TextStyleExtention on BuildContext {
  TextStyle get x18 =>
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
  TextStyle get withWhite => copyWith(color: AppColors.white);
}
