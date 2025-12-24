
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget{
  final String? buttonText;
  final Color? textColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? borderRadius;
  final Color? borderColor;
  final double? fontSize;
  final double? borderWidth;
  final VoidCallback? onTap;

  const PrimaryOutlinedButtonWidget({super.key,this.buttonText,
    this.textColor,this.buttonWidth,this.buttonHeight,this.borderRadius,
    this.onTap,this.fontSize, this.borderColor, this.borderWidth
  });


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onTap,
      style: OutlinedButton.styleFrom(fixedSize: Size(buttonWidth?? 331.w,buttonHeight?? 56.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius?? 8.r),
          ),
      side: BorderSide(width:borderWidth?? 1.w,color: borderColor?? AppColors.primaryColor),
      ), child:
      Text(buttonText?? "", style: AppStyles.white15W600Style.copyWith(color: textColor ?? AppColors.primaryColor, fontSize: fontSize ?? 15.sp),),

    );
  }


}