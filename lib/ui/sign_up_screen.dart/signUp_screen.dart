import 'package:evently/core/constatnts.dart/app_assets.dart';
import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_routes.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_switch.dart';
import 'package:evently/core/widgets/custom_textFormField.dart';
import 'package:evently/core/widgets/custom_text_span.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      appBar: AppBar(
        backgroundColor: AppColors.lightWhite,
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(),
            buildAppLogo(),
            SizedBox(
              height: 24.h,
            ),
            CustomTextformfield(
              text: 'Name',
              prefixIcon: Icon(
                CupertinoIcons.person_fill,
                color: AppColors.grey,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextformfield(
              text: 'Email',
              prefixIcon: Icon(
                Icons.email_rounded,
                color: AppColors.grey,
              ),
            ),
            SizedBox(
              height: 16.h,
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
              height: 16.h,
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
              height: 16.h,
            ),
            CustomButton(
                text: 'Create Account',
                backgroundColor: AppColors.primaryColor,
                textColor: AppColors.lightWhite),
            SizedBox(
              height: 8.h,
            ),
            CustomTextSpan(
              preText: 'Already Have Account ? ',
              postText: 'Login',
              onTap: () {
                Navigator.push(context, AppRoutes.login());
              },
            ),
            CustomSwitch(),
          ],
        ),
      ),
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
