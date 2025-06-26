import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';

class AppTheme {
  static ThemeData myTheme = ThemeData(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
        titleTextStyle: AppStyles.textStyle24.copyWith(color: AppColors.salmon),
      ),
      scaffoldBackgroundColor: AppColors.white,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: AppColors.salmon,
              foregroundColor: AppColors.white,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))));
}
