// import 'package:flutter/material.dart';

// import 'package:pharm_flow/core/config/app_colors.dart';

// class AppTheme{

//   static final ThemeData theme = ThemeData(
//     scaffoldBackgroundColor: AppColors.whiteColor,
//     unselectedWidgetColor: AppColors.grey78Color,
//     fontFamily: 'Lexend',
//     primaryColor: AppColors.primary,
//     colorScheme: ColorScheme.light(
//       primary: AppColors.primary,
//       secondary: AppColors.primary.withOpacity(0.2),
//     ),
//     buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//     textTheme: ,
//     appBarTheme: AppBarTheme(
//       centerTitle: false,
//       backgroundColor: Colors.white,
//       elevation: 0,
//       iconTheme: const IconThemeData(
//         color: AppColors.blackColor,
//       ),
//       titleTextStyle: TextStyle(
//         fontSize: 14,
//         color: AppColors.blackColor,
//       ),
//     ),
//   );

// }

import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

class AppThemeData {
  AppThemeData._();

  static final ThemeData theme = ThemeData(
    primarySwatch: AppColors.primaryMaterialCo,
    scaffoldBackgroundColor: AppColors.white,
    unselectedWidgetColor: AppColors.grey78Color,
    fontFamily: 'Lexend',
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.primary.withOpacity(0.2),
    ),
    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
    popupMenuTheme: PopupMenuThemeData(
      position: PopupMenuPosition.under,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: AppColors.greyD9Color),
      ),
      color: AppColors.white,
      surfaceTintColor: AppColors.white,
    ),
    badgeTheme: const BadgeThemeData(
      backgroundColor: AppColors.primary,
      alignment: Alignment.topLeft,
      textColor: AppColors.white,
      offset: Offset(5, 0),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: AppColors.blackColor,
      ),
      titleTextStyle: TextStyle(
        fontSize: 14,
        color: AppColors.blackColor,
      ),
    ),
  );
}
