import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardItemWidget extends StatelessWidget {
  final String cardName;
  final String balance;
  final String cardNumber;
  final String expiryDate;
  final Color? cardColor;

  const MyCardItemWidget({
    super.key,
    required this.cardName,
    required this.balance,
    required this.cardNumber,
    required this.expiryDate,
    this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 179.h,
          width: 327.w,
          decoration: BoxDecoration(
            color: cardColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          left: 0,
          bottom: -85,
          child: Image.asset(
            AppAssets.ellipse1,
            width: 200.w,
            height: 200.h,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 0,
          bottom: -85,
          child: Image.asset(
            AppAssets.ellipse1,
            width: 200.w,
            height: 200.h,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 0,
          bottom: -85,
          child: Image.asset(
            AppAssets.ellipse1,
            width: 140.w,
            height: 140.h,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 0,
          bottom: -85,
          child: Image.asset(
            AppAssets.ellipse1,
            width: 140.w,
            height: 140.h,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 24.w,
          top: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cardName, style: AppStyles.white12InterW700Style),
              HeightSpace(18),
              Text(
                "Balance",
                style: AppStyles.mediumGray12InterW500Style.copyWith(
                  color: AppColors.ofWhiteColor.withOpacity(0.48),
                  fontSize: 14.sp,
                ),
              ),
              HeightSpace(8),
              Text(
                balance,
                style: AppStyles.darkBlack16InterW600Style.copyWith(
                  color: AppColors.whiteColor,
                  fontSize: 24.sp,
                ),
              ),
              HeightSpace(22),
              Text(
                cardNumber,
                style: AppStyles.mediumGray12InterW500Style.copyWith(
                  color: AppColors.whiteColor.withOpacity(0.56),
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 26.w,
          top: 26.w,
          child: Image.asset(
            AppAssets.visaImage,
            width: 52.w,
            height: 16.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          right: 26.w,
          bottom: 26.w,
          child: Text(
            expiryDate,
            style: AppStyles.mediumGray12InterW500Style.copyWith(
              color: AppColors.ofWhiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
