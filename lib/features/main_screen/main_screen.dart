import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/features/Profile/my_profile_screen.dart';
import 'package:finance_ui/features/all_card/my_card_screen.dart';
import 'package:finance_ui/features/home_page/home_screen.dart';
import 'package:finance_ui/features/statistics/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screen = [
    HomeScreen(),
    StatisticsScreen(),
    Container(width: 200, height: 200, color: Colors.white),
    MyCardScreen(),
    MyProfileScreen(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.homeIcon,
                width: 24.w,
                height: 24.h,
                color: selectedIndex == 0
                    ? AppColors.primaryColor
                    : AppColors.mediumGrayColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.statisticIcon,
                width: 24.w,
                height: 24.h,
                color: selectedIndex == 1
                    ? AppColors.primaryColor
                    : AppColors.mediumGrayColor,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.sp,
                height: 48.sp,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add_box_rounded,
                  size: 24.sp,
                  color: AppColors.whiteColor,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.walletIcon,
                width: 24.w,
                height: 24.h,
                color: selectedIndex == 3
                    ? AppColors.primaryColor
                    : AppColors.mediumGrayColor,
              ),
              label: 'My Card',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.profileIcon,
                width: 24.w,
                height: 24.h,
                color: selectedIndex == 4
                    ? AppColors.primaryColor
                    : AppColors.mediumGrayColor,
              ),
              label: 'Profile',
            ),
          ],
          elevation: 3,
          selectedItemColor: AppColors.primaryColor,
          selectedFontSize: 12.sp,
          unselectedFontSize: 12.sp,
          backgroundColor: Color(0xffFDFDFD),
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.mediumGrayColor,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
        body: Center(child: screen[selectedIndex]),
      ),
    );
  }
}
