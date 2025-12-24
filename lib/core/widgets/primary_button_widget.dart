
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget{
  final String? buttonText;
  final Color? textColor;
  final Color? buttonColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? borderRadius;
  final double? fontSize;
  final VoidCallback? onTap;

  const PrimaryButtonWidget({super.key,this.buttonText,this.buttonColor,
  this.textColor,this.buttonWidth,this.buttonHeight,this.borderRadius,
    this.onTap,this.fontSize
  });


  @override
  Widget build(BuildContext context) {

    return ElevatedButton(onPressed: onTap,
      style: ElevatedButton.styleFrom(fixedSize: Size(buttonWidth?? 331.w,buttonHeight?? 56.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius?? 8.r)
      ),
      backgroundColor: buttonColor?? AppColors.primaryColor
      ), child:
    Text(buttonText?? "", style: AppStyles.white15W600Style.copyWith(color: textColor , fontSize:  fontSize ?? 15.sp),),

    );
  }
  
  
}