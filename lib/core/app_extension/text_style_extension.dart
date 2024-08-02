import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

extension TextStyleExtension on BuildContext {
  TextStyle get s10 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 10));



  TextStyle get s12 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 12));

  TextStyle get x20 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 20));

  TextStyle get x22 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 22));

  TextStyle get x24 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 24));

  TextStyle get x18 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 18));

  TextStyle get x16 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 16));

  TextStyle get md14 => Theme.of(this)
      .textTheme
      .headlineSmall!
      .copyWith(fontSize: _getResponsiveFontSize(this, baseFontSize: 14));

  double _getResponsiveFontSize(BuildContext context,
      {double baseFontSize = 16.0}) {
    double responsiveFontSize = baseFontSize * (1);
    return responsiveFontSize;
  }
}

extension StyleExtension on TextStyle {
  TextStyle get withBlack => copyWith(color: AppColors.blackColor);

  TextStyle get withGrey78 => copyWith(color: AppColors.grey78Color);

  TextStyle get withGrey33 => copyWith(color: AppColors.grey33Color);

  TextStyle get withGreyD9 => copyWith(color: AppColors.borderColorGrey);

  TextStyle get withGreyE6 => copyWith(color: AppColors.greyE6Color);

  TextStyle get withRed => copyWith(color: AppColors.errorRed);

  TextStyle get withDarkGrey => copyWith(color: AppColors.darkGrey);

  TextStyle get withPrimary => copyWith(color: AppColors.primary);

  TextStyle get withWhite => copyWith(color: AppColors.whiteColor);
  TextStyle get withGreen => copyWith(color: AppColors.green);

  TextStyle get weigh400 => copyWith(fontWeight: FontWeight.w400);

  TextStyle get weigh300 => copyWith(fontWeight: FontWeight.w300);

  TextStyle get weigh500 => copyWith(fontWeight: FontWeight.w500);

  TextStyle get weigh600 => copyWith(fontWeight: FontWeight.w600);

  TextStyle get weigh800 => copyWith(fontWeight: FontWeight.w800);

  TextStyle get redLineThrough => copyWith(
      decoration: TextDecoration.lineThrough,
      decorationColor: AppColors.errorRed);
}
