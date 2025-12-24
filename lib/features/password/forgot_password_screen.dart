import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/custom_prompt_action_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';



class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen ({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;

  @override
  void initState() {

    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Form(
              key: formKey,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeightSpace(12),
                    BackButtonWidget(),
                    HeightSpace(28),
                    SizedBox(
                      child: Text(
                        "Forgot Password?",
                        style: AppStyles.primaryHeadLine,
                      ),
                    ),
                    HeightSpace(10),
                    Text("Don't worry! It occurs. Please enter the email address linked with your account.",style: AppStyles.subTitleStyles,),
                    HeightSpace(32),
                    CustomTextField(hintText: "Enter your email",
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),

                    HeightSpace(38),
                    PrimaryButtonWidget(onTap: (){
                      if (formKey.currentState!.validate() ) {
                        (context).pushNamed(AppRoutes.createNewPasswordScreen);
                      }},buttonText: "Send Code",),

                    Spacer(),
                    CustomPromptActionText(normalText: "Remember Password? " ,actionText: "Login",onTap: (){
                      (context).pushNamed(AppRoutes.loginScreen);

                    },),
                    HeightSpace(26),
                  ],
                ),),
            )

      ),
    );
  }
}