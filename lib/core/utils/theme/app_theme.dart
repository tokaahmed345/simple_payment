import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';

class AppTheme {
  static ThemeData myTheme=ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
      backgroundColor: AppColors.salmon,
foregroundColor: AppColors.white,
padding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)
    ))
  )
  ;
}