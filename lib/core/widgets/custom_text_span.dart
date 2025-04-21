import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({super.key ,  this.preText ='' , required this.postText,required this.onTap});
  final String? preText ;
  final String? postText ;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
                text: preText,
                style: AppStyles.inter16Black,
                children: [
                  TextSpan(
                    text: postText,
                    style: AppStyles.forgetPass,
                    recognizer: TapGestureRecognizer()
                      ..onTap = onTap,
                  ),
                ],
              ));
  }
}