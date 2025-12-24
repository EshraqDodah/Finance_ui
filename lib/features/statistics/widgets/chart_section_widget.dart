import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/statistics/widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartSectionWidget extends StatelessWidget {
  const ChartSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 236.h,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Jan 28 - May 28, 2025 ",
                style: AppStyles.mediumGray12InterW500Style.copyWith(
                  fontSize: 14.sp,
                ),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(118.w, 38.h),
                  backgroundColor: const Color(0xffB9C4FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Monthly",
                      style: AppStyles.mediumGray12InterW500Style.copyWith(
                        color: AppColors.darkBlackColor,
                        fontSize: 14.sp,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 18.sp,
                      color: AppColors.darkBlackColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          HeightSpace(16),
          Expanded(child: ChartWidget()),
        ],
      ),
    );
  }
}
