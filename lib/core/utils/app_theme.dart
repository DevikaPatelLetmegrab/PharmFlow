import 'package:flutter/material.dart';


import '../config/app_colors.dart';

class AppTheme{

  static final ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    unselectedWidgetColor: AppColors.grey78Color,
    fontFamily: 'Lexend',
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.primary.withOpacity(0.2),
    ),
    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
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



