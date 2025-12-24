import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButtonWidget extends StatelessWidget{
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 41.w,
      height: 41.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrayColor , width: 1.w),
        borderRadius: BorderRadius.all(
            Radius.circular(12.r)
        ),
      ),
      child: IconButton(onPressed: (){
        context.pop();
      }, icon: Icon(Icons.arrow_back_ios_rounded,color: AppColors.primaryColor,size:19.w,)),
    );
  }
}