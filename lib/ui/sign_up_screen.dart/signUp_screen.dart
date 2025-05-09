import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently/core/constatnts.dart/app_assets.dart';
import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_routes.dart';
import 'package:evently/core/provider/settings_provider.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_switch.dart';
import 'package:evently/core/widgets/custom_textFormField.dart';
import 'package:evently/core/widgets/custom_text_span.dart';
import 'package:evently/firebase/firebase_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isFlipped = false;
  int value = 0;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //var settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColors.transparent,
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(),
              buildAppLogo(),
              SizedBox(
                height: 18.h,
              ),
              CustomTextformfield(
                controller: nameController,
                text: AppLocalizations.of(context)!.name,
                prefixIcon: Icon(
                  CupertinoIcons.person_fill,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextformfield(
                controller: emailController,
                text: AppLocalizations.of(context)!.email,
                prefixIcon: Icon(
                  Icons.email_rounded,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextformfield(
                controller: passwordController,
                text: AppLocalizations.of(context)!.password,
                isPassword: true,
                prefixIcon: Icon(
                  CupertinoIcons.lock_fill,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextformfield(
                text: AppLocalizations.of(context)!.re_password,
                isPassword: true,
                prefixIcon: Icon(
                  CupertinoIcons.lock_fill,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
            
              CustomButton(
                  onTap: () {
                    signUpToFirebase(
                        email: emailController.text,
                        password: passwordController.text,
                        name: nameController.text);
                    Navigator.push(context, AppRoutes.login());
                  },
                  text: AppLocalizations.of(context)!.create_account,
                  backgroundColor: AppColors.primaryColor,
                  textColor: AppColors.lightWhite),
              SizedBox(
                height: 8.h,
              ),
              CustomTextSpan(
                preText: AppLocalizations.of(context)!.already_have_account,
                postText: AppLocalizations.of(context)!.login,
                onTap: () {
                  Navigator.push(context, AppRoutes.login());
                },
              ),
              buildSwitch(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSwitch() {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Transform(
      transform: Matrix4.identity()..scale(_isFlipped ? -1.0 : 1.0, 1.0),
      alignment: Alignment.center,
      child: AnimatedToggleSwitch<int>.rolling(
        current: value,
        values: [0, 1],
        onChanged: (i) {
          _isFlipped = !_isFlipped;
          value = i;
          i == 0
              ? settingsProvider.changeLanguage('en')
              : settingsProvider.changeLanguage('ar');

          setState(() {});
        },
        allowUnlistedValues: true,
        borderWidth: 2,
        iconOpacity: 1,
        iconBuilder: (value, foreground) {
          return Container(
              margin: EdgeInsets.all(6),
              child: Image.asset(
                value == 0 ? AppAssets.us : AppAssets.egypt,
                fit: BoxFit.scaleDown,
              ));
        },
        style: ToggleStyle(
            borderColor: AppColors.primaryColor,
            indicatorColor: AppColors.transparent,
            indicatorBorder: Border.all(
                color: AppColors.primaryColor,
                width: 4,
                style: BorderStyle.solid),
            backgroundColor: AppColors.white), // optional style settings
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
