import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget{

  final String? hintText;
  final Color? fillColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? textColor;
  final Color? hintColor;
  final double? fontSize;
  final double? borderRadius;
  final double? width;
  final double? height;
  final bool? isPassword;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextField({super.key ,  this.hintText,
    this.fillColor,
    this.borderColor,
    this.focusedBorderColor,
    this.textColor,
    this.hintColor,
    this.fontSize,
    this.borderRadius,
    this.width,
    this.height,
    this.isPassword,
    this.suffixIcon,
    this.controller,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?? 331.w,
      child: TextFormField(
        controller: controller,
        validator: validator,
        cursorColor: AppColors.primaryColor,
        autofocus: false,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.h),
          hintText: hintText?? "",
          hintStyle: TextStyle(fontSize: fontSize?? 15.sp , fontWeight: FontWeight.w500 , color: textColor?? AppColors.secondaryColor),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: fillColor?? AppColors.extraLightGrayColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius?? 8.r),
            borderSide: BorderSide(color:borderColor?? AppColors.lightGrayColor , width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius?? 8.r),
            borderSide: BorderSide(color: focusedBorderColor?? AppColors.primaryColor , width: 1.5.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius?? 8.r),
            borderSide: BorderSide(color: Colors.red , width: 1.5.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius?? 8.r),
            borderSide: BorderSide(color: Colors.red , width: 1.5.w),
        ),
        ))
    );
  }
}