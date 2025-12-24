import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/primary_button_widget.dart';
import '../../core/widgets/primary_outlined_button_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              AppAssets.onBoardingImage,
              width: double.infinity,
              height: 570.h,
              fit: BoxFit.fill,
            ),
            HeightSpace(21),
            PrimaryButtonWidget(
              onTap: () {
                context.pushNamed(AppRoutes.loginScreen);
              },
              buttonText: "Login",
            ),
            HeightSpace(15),
            PrimaryOutlinedButtonWidget(
              onTap: () {
                (context).pushNamed(AppRoutes.registerScreen);
              },
              buttonText: "Register",
            ),
            HeightSpace(46),
            Text(
              "Continue as a guest",
              style: AppStyles.black15BoldStyle.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
