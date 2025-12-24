import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStatisticsItem extends StatelessWidget {
  final String mainText;
  final String subText;
  final IconData? iconData;
  const CustomStatisticsItem({
    super.key,
    required this.mainText,
    required this.subText,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      width: 156.w,
      height: 140.h,
      decoration: BoxDecoration(
        color: AppColors.ofWhiteColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.whiteLightColor, width: 1.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Color(0xffE2E0E4),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(iconData, size: 24.sp, color: AppColors.primaryColor),
          ),
          HeightSpace(12),
          Text(mainText, style: AppStyles.darkBlack16InterW600Style),
          HeightSpace(4),
          Text(subText, style: AppStyles.mediumGray12InterW500Style),
        ],
      ),
    );
  }
}
