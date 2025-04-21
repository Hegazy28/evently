import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextformfield extends StatefulWidget {
  const CustomTextformfield(
      {super.key,
      required this.text,
      this.suffixIcon,
      this.prefixIcon,
      this.isPassword = false});
  final String text;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isPassword;

  @override
  State<CustomTextformfield> createState() => _CustomTextformfieldState();
}

class _CustomTextformfieldState extends State<CustomTextformfield> {
  late bool isObsecure;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      isObsecure = widget.isPassword;

  }

  @override
  Widget build(BuildContext context) {
   
    return TextFormField(
      obscureText: isObsecure,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon ,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
                child: isObsecure? Icon(
                  Icons.visibility_off,
                  color: AppColors.grey,
                ): 
                Icon(Icons.visibility,
                  color: AppColors.grey,
                ),)
            :  widget.suffixIcon ,
        labelText: widget.text,
        labelStyle: AppStyles.inter16Grey,
        border: AppStyles.borders,
        enabledBorder: AppStyles.borders,
        focusedBorder: AppStyles.borders,
        errorBorder: AppStyles.borders,
        focusedErrorBorder: AppStyles.borders,
      ),
    );
  }
}
