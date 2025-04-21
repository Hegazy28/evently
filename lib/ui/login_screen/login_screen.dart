import 'package:evently/core/constatnts.dart/app_assets.dart';
import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_routes.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_switch.dart';
import 'package:evently/core/widgets/custom_textFormField.dart';
import 'package:evently/core/widgets/custom_text_span.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              buildAppLogo(),
              SizedBox(
                height: 24,
              ),
              CustomTextformfield(
                text: 'Email',
                prefixIcon: Icon(
                  Icons.email_rounded,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextformfield(
                text: 'Password',
                isPassword: true,
                prefixIcon: Icon(
                  CupertinoIcons.lock_fill,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextSpan(postText: 'Forgot Password?', onTap: () {}),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                backgroundColor: AppColors.primaryColor,
                text: 'Login',
                textColor: AppColors.white,
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextSpan(
                postText: 'Create Account',
                preText: 'Don\'t have account?',
                onTap: () {
                  Navigator.push(context, AppRoutes.signup());
                },
              ),
              SizedBox(
                height: 16,
              ),
              buildOrRow(),
              SizedBox(
                height: 8,
              ),
              CustomButton(
                text: 'Login With Google',
                backgroundColor: AppColors.lightWhite,
                textColor: AppColors.primaryColor,
                elevation: 0,
                prefixIcon: AppAssets.google,
              ),
              SizedBox(
                height: 8,
              ),
              CustomSwitch(),
             
            ]),
          ),
        ),
      ),
    );
  }

  Widget buildOrRow() {
    return Row(
      children: [
        Expanded(
            child: Divider(
          indent: 10.w,
          endIndent: 10.w,
          color: AppColors.primaryColor,
        )),
        Text(
          'or',
          style: AppStyles.inter24Primary.copyWith(fontSize: 16.sp),
        ),
        Expanded(
            child: Divider(
          indent: 10.w,
          endIndent: 10.w,
          color: AppColors.primaryColor,
        )),
      ],
    );
  }

  Widget buildAppLogo() {
    return SizedBox(
        width: 150.w,
        height: 150.h,
        child: Image.asset(
          AppAssets.logo,
          color: AppColors.primaryColor,
        ));
  }
}
