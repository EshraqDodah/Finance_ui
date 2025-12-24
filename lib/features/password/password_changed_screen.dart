import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';



class PasswordChangedScreen extends StatelessWidget{
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: SafeArea(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 22.w),
             child:
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                SvgPicture.asset(AppAssets.successMarkSvg , width: 100.w,height: 100.h,),
                 HeightSpace(30),
                 Text(
                     "Password Changed!",
                     style: AppStyles.primaryHeadLine,
                 ),
                 HeightSpace(8),
                 Text("Your password has been changed successfully.",style: AppStyles.subTitleStyles,textAlign: TextAlign.center,),
                 HeightSpace(40),
                 PrimaryButtonWidget(buttonText: "Back to Login",onTap: (){
                   context.pushNamed(AppRoutes.loginScreen);
                 },)
               ],
             ),
         )

     ),
   );

}
}