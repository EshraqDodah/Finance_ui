import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.mediumGray12InterW500Style.copyWith(fontSize: 14.sp),
        ),
        HeightSpace(16),
        Text(
          value,
          style: AppStyles.darkBlack16InterW600Style.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        HeightSpace(16),
        const Divider(color: Color(0xffF2F2F5), thickness: 1),
      ],
    );
  }
}
