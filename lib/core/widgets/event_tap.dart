import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventTap extends StatelessWidget {
  const EventTap({super.key, required this.image, required this.text , required this.isSelected});
  final String image;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      height: 40.h,
      width: 130.w,
      decoration: BoxDecoration(
        color: isSelected?  AppColors.white : AppColors.transparent,
        borderRadius: BorderRadius.circular(24),border: Border.all(color: AppColors.white)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,width: 26,height: 26,color: isSelected? AppColors.primaryColor: AppColors.white,),
          SizedBox(width: 6.w,),
          Text(text,style: AppStyles.inter14White.copyWith(color: isSelected?AppColors.primaryColor : AppColors.white),),
        ],
      ),
    );
  }
}
