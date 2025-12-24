import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget{
  final String? text;
  const CustomOrLoginWidget({super.key,this.text});

  @override
  Widget build(BuildContext context) {
   return   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       SizedBox(
         width: 112.w,
         child: Divider(
           color: AppColors.lightGrayColor,
           thickness: 1,
           endIndent : 12,
         ),
       ),
       Text(text ??"Or Login with",style: AppStyles.darkGray14W600Style),
       SizedBox(
         width: 112.w,
         child: Divider(
           color: AppColors.lightGrayColor,
           thickness: 1,
           indent : 12,
         ),
       ),

     ],);
  }

}