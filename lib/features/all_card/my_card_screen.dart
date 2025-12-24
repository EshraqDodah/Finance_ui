import 'package:finance_ui/features/all_card/widgets/my_card_item_widget.dart';
import 'package:finance_ui/features/statistics/widgets/custom_top_par_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/spacing_widgets.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightSpace(16),
          CustomTopParWidget(text: "All Cards", icon: Icons.more_horiz_rounded),
          HeightSpace(24),
          MyCardItemWidget(
            cardName: "X-Card",
            balance: "23400 JD",
            cardNumber: "****  3434",
            expiryDate: "12/24",
          ),
          HeightSpace(24),
          MyCardItemWidget(
            cardName: "Y-Card",
            balance: "3209 JD",
            cardNumber: "****  4545",
            expiryDate: "12/24",
            cardColor: Colors.red[400],
          ),
        ],
      ),
    );
  }
}
