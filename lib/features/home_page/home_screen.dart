import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/home_page/widgets/carousel_widget.dart';
import 'package:finance_ui/features/home_page/widgets/custom_home_page_item.dart';
import 'package:finance_ui/features/home_page/widgets/top_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightSpace(18),
          TopProfileWidget(),
          HeightSpace(22),
          CustomCarouselWidget(),
          HeightSpace(24),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomHomePageItem(
                  mainText: "Send money",
                  subText: "Take acc to acc",
                  iconData: Icons.send_rounded,
                ),
                CustomHomePageItem(
                  mainText: "Pay the bill",
                  subText: "Lorem ipsum",
                  iconData: Icons.account_balance_wallet_rounded,
                ),
                CustomHomePageItem(
                  mainText: "Request",
                  subText: "Lorem ipsum",
                  iconData: Icons.send_rounded,
                ),
                CustomHomePageItem(
                  mainText: "Contact",
                  subText: "Lorem ipsum",
                  iconData: Icons.people_alt_rounded,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
