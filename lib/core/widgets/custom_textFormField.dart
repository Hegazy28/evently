import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextformfield extends StatefulWidget {
   CustomTextformfield(
      {super.key,
      required this.text,
      this.suffixIcon,
      this.prefixIcon,
      this.controller,
      this.isPassword = false});
  final String text;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isPassword;
  TextEditingController? controller =TextEditingController();

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
      controller: widget.controller,
      obscureText: isObsecure,
      style: AppStyles.inter16Black,
      decoration: InputDecoration(
        
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
                child: isObsecure
                    ? Icon(
                        Icons.visibility_off,
                        color: AppColors.grey,
                      )
                    : Icon(
                        Icons.visibility,
                        color: AppColors.grey,
                      ),
              )
            : widget.suffixIcon,
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
