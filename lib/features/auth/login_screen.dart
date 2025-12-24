import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_ui/features/auth/widgets/custom_prompt_action_text.dart';
import 'package:finance_ui/features/auth/widgets/custom_social_login_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isPassword = true;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSpace(12),
                  BackButtonWidget(),
                  HeightSpace(28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      "Welcome back! Again!",
                      style: AppStyles.primaryHeadLine,
                    ),
                  ),
                  HeightSpace(32),
                  CustomTextField(
                    hintText: "Enter your email",
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  HeightSpace(15),
                  CustomTextField(
                    hintText: "Enter your password",
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    isPassword: isPassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        isPassword ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  HeightSpace(15),
                  InkWell(
                    onTap: () {
                      context.pushNamed(AppRoutes.forgotPasswordScreen);
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot Password?",
                        style: AppStyles.darkGray14W600Style,
                      ),
                    ),
                  ),
                  HeightSpace(30),
                  PrimaryButtonWidget(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        context.pushNamed(AppRoutes.otpVerificationScreen);
                      }
                    },
                    buttonText: "Login",
                  ),
                  HeightSpace(35),
                  CustomOrLoginWidget(),
                  HeightSpace(22),
                  CustomSocialLoginIcon(),
                  HeightSpace(155),
                  CustomPromptActionText(
                    normalText: "Don’t have an account? ",
                    actionText: "Register Now",
                    onTap: () {
                      (context).pushNamed(AppRoutes.registerScreen);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
