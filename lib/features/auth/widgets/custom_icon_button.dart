import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget{
  final VoidCallback? onTap;
  final String? iconPath;
  const CustomIconButton({super.key,this.onTap,this.iconPath});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child:  Container(
        width: 105.w,
        height: 56.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrayColor , width: 1.w),
          borderRadius: BorderRadius.all(
              Radius.circular(12.r)
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 26.w,
            height: 26.h,
            child: SvgPicture.asset(
              iconPath??
              AppAssets.facebookIcon,
              fit: BoxFit.contain,
            ),
          ),),
      ),);
  }
}