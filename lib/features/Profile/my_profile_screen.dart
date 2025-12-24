import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/features/Profile/widgets/info_item_widget.dart';
import 'package:finance_ui/features/statistics/widgets/custom_top_par_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/spacing_widgets.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightSpace(16),
          CustomTopParWidget(
            text: "My Profile",
            icon: Icons.mode_edit_outline_rounded,
          ),
          HeightSpace(39),
          ClipOval(
            child: Image.asset(
              AppAssets.personImage,
              width: 100.w,
              height: 100.w,
              fit: BoxFit.fill,
            ),
          ),
          HeightSpace(9),
          InfoItem(label: "Full Name", value: "Eshraq Mohammed"),
          HeightSpace(16),
          InfoItem(label: "Email", value: "Eshraq@gmail.com"),
          HeightSpace(16),
          InfoItem(label: "Phone Number", value: "079500000"),
          HeightSpace(16),
          InfoItem(label: "Address", value: "Jordan,Amman"),
        ],
      ),
    );
  }
}
