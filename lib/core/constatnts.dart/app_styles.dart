import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static final TextStyle inter16Black = GoogleFonts.inter(
      textStyle: TextStyle(color: AppColors.black, fontSize: 16.sp));
  static final TextStyle inter24White = GoogleFonts.inter(
      textStyle: TextStyle(color: AppColors.white, fontSize: 24.sp));
  static final TextStyle inter24WhiteBold = GoogleFonts.inter(
      textStyle: TextStyle(color: AppColors.white, fontSize: 24.sp,fontWeight: FontWeight.bold));
  static final TextStyle inter14White = GoogleFonts.inter(
      textStyle: TextStyle(color: AppColors.white, fontSize: 14.sp));
  static final TextStyle inter24Primary = GoogleFonts.inter(
      textStyle: TextStyle(color: AppColors.primaryColor, fontSize: 24.sp));
  static final TextStyle inter14PrimaryBold = GoogleFonts.inter(
      textStyle: TextStyle(color: AppColors.primaryColor, fontSize: 14.sp,fontWeight: FontWeight.bold));
  static final TextStyle inter16Grey = GoogleFonts.inter(
      textStyle: TextStyle(color: AppColors.grey, fontSize: 16.sp));
  
  static final forgetPass = TextStyle(
                    fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.primaryColor,
                      color: AppColors.primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold);
  
  
  
  
  
  
  static final borders = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: AppColors.grey, width: 1,style: BorderStyle.solid),

  );
}
