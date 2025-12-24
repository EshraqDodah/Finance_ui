import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/custom_prompt_action_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightSpace(12),
                BackButtonWidget(),
                HeightSpace(28),
                SizedBox(
                  child: Text(
                    "OTP Verification",
                    style: AppStyles.primaryHeadLine,
                  ),
                ),
                HeightSpace(10),

                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppStyles.subTitleStyles,
                ),

                HeightSpace(32),
                PinCodeTextField(
                  textStyle: AppStyles.primaryHeadLine.copyWith(
                    fontSize: 22.sp,
                  ),
                  controller: pinCodeController,
                  keyboardType: TextInputType.number,
                  length: 4,
                  validator: (value) {
                    if (value!.length < 4) {
                      return "Please enter the complete verification code";
                    } else {
                      return null;
                    }
                  },
                  cursorColor: AppColors.primaryColor,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    fieldHeight: 60.h,
                    fieldWidth: 70.w,
                    activeFillColor: Colors.white,
                    activeColor: AppColors.blackColor,
                    activeBorderWidth: 1.2.w,
                    inactiveColor: AppColors.lightGrayColor,
                    inactiveFillColor: AppColors.extraLightGrayColor,
                    selectedFillColor: AppColors.whiteColor,
                    selectedColor: AppColors.primaryColor,
                    selectedBorderWidth: 1.5.w,
                  ),
                  enableActiveFill: true,
                  appContext: context,
                ),
                HeightSpace(38),
                PrimaryButtonWidget(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      (context).pushNamed(AppRoutes.mainScreen);
                    }
                  },
                  buttonText: "Verify",
                ),
                Spacer(),

                CustomPromptActionText(
                  normalText: "Didn’t received code? ",
                  actionText: "Resend",
                  onTap: () {},
                ),
                HeightSpace(26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
