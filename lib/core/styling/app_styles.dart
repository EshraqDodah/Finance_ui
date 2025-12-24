import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadLine =  TextStyle(
    fontFamily: AppFonts.mainFontName , fontSize: 30.sp,fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );
  static TextStyle subTitleStyles = TextStyle(
    fontFamily: AppFonts.mainFontName , fontSize: 16.sp,fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor
  );

  static TextStyle white15W600Style = TextStyle(
  fontFamily: AppFonts.mainFontName , fontSize: 15.sp,fontWeight: FontWeight.w600,
  color: AppColors.whiteColor
  );

  static TextStyle darkBlack16InterW600Style = TextStyle(
  fontFamily: AppFonts.secondaryFontName , fontSize: 16.sp,fontWeight: FontWeight.w600,
  color: AppColors.darkBlackColor
  );

  static TextStyle darkGray14W600Style = TextStyle(
      fontFamily: AppFonts.mainFontName , fontSize: 14.sp,fontWeight: FontWeight.w600,
      color: AppColors.darkGrayColor
  );

  static TextStyle mediumGray12InterW500Style=TextStyle(
      fontFamily: AppFonts.secondaryFontName , fontSize: 12.sp,fontWeight: FontWeight.w500,
      color: AppColors.mediumGrayColor
  );

  static TextStyle black15BoldStyle = TextStyle(
      fontFamily: AppFonts.mainFontName , fontSize: 15.sp,fontWeight: FontWeight.bold,
      color: AppColors.blackColor
  );

  static TextStyle white12InterW700Style=TextStyle(
      fontFamily: AppFonts.secondaryFontName , fontSize: 12.sp,fontWeight: FontWeight.bold,
      color: AppColors.ofWhiteColor
  );
}