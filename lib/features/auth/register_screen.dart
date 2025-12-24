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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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
                    width: 331.w,
                    child: Text(
                      "Hello! Register to get started",
                      style: AppStyles.primaryHeadLine,
                    ),
                  ),
                  HeightSpace(32),
                  CustomTextField(
                    hintText: "Username",
                    controller: usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  HeightSpace(12),

                  CustomTextField(
                    hintText: "Email",
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  HeightSpace(12),
                  CustomTextField(
                    hintText: "Password",
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
                  ),
                  HeightSpace(12),
                  CustomTextField(
                    hintText: "Confirm password",
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }

                      return null;
                    },
                  ),
                  HeightSpace(30),
                  PrimaryButtonWidget(
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    buttonText: "Register",
                  ),
                  HeightSpace(35),
                  CustomOrLoginWidget(text: "Or Register with"),
                  HeightSpace(22),
                  CustomSocialLoginIcon(),
                  HeightSpace(54),
                  CustomPromptActionText(
                    normalText: "Already have an account? ",
                    actionText: "Login Now",
                    onTap: () {
                      (context).pushNamed(AppRoutes.loginScreen);
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
