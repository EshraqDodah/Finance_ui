import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/styling/app_colors.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/spacing_widgets.dart';

class TopProfileWidget extends StatelessWidget {
  const TopProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.personImage,
                width: 48.w,
                height: 48.w,
                fit: BoxFit.fill,
              ),
            ),
            WidthSpace(11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: AppStyles.mediumGray12InterW500Style,
                ),
                Text(
                  "Eshraq Mohammad",
                  style: AppStyles.darkBlack16InterW600Style.copyWith(
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.w,
          decoration: BoxDecoration(
            color: Color(0xffFDFDFD),
            border: Border.all(color: AppColors.whiteLightColor, width: 1.w),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.notifications_rounded,
            size: 24.sp,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
