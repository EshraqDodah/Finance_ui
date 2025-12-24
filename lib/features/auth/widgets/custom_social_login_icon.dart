import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/features/auth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomSocialLoginIcon extends StatelessWidget{
  const CustomSocialLoginIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: (){}, iconPath:  AppAssets.facebookIcon,),
        CustomIconButton(onTap: (){}, iconPath:  AppAssets.googleIcon,),
        CustomIconButton(onTap: (){}, iconPath:  AppAssets.appleIcon,),

      ],
    );
  }
}