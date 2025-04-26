import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightWhite,
    textTheme: TextTheme(
      bodyLarge: AppStyles.inter24Primary,
  
      bodySmall: AppStyles.inter16Black,
      
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),


  );

  static ThemeData darkTheme = ThemeData(
     scaffoldBackgroundColor: AppColors.darkBlue,
    textTheme: TextTheme(
      bodyLarge: AppStyles.inter24Primary.copyWith(
        color: Colors.white,
      ),
  
      bodySmall: AppStyles.inter16Black,
      
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),


  );
}