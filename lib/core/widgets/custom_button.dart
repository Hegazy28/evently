import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.prefixIcon,
    this.elevation,
    required this.onTap
  });
  final Function  onTap;
  final String text ;
  final Color backgroundColor ;
  final Color textColor ;
  final String? prefixIcon;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      
              style: ElevatedButton.styleFrom(
                elevation: elevation,
                backgroundColor: backgroundColor,
                minimumSize: Size(360.w, 50.h),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              onPressed: () {
                onTap();
              },
              child: 
               prefixIcon != null ? 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    prefixIcon!,
                    
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(text,style: AppStyles.inter24White.copyWith(fontSize: 16.sp,color:textColor )),
                ],
              ): Text(text,style: AppStyles.inter24White.copyWith(fontSize: 20.sp,color:textColor )),
            );
  }
}