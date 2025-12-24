import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopParWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomTopParWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 48.w,
          height: 48.w,
          decoration: BoxDecoration(
            color: AppColors.ofWhiteColor,
            border: Border.all(color: AppColors.whiteLightColor, width: 1.w),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24.sp,
            color: AppColors.darkBlackColor,
          ),
        ),
        Text(
          text,
          style: AppStyles.darkBlack16InterW600Style.copyWith(fontSize: 18.sp),
        ),
        Container(
          width: 48.w,
          height: 48.w,
          decoration: BoxDecoration(
            color: AppColors.ofWhiteColor,
            border: Border.all(color: AppColors.whiteLightColor, width: 1.w),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 24.sp, color: AppColors.darkBlackColor),
        ),
      ],
    );
  }
}
