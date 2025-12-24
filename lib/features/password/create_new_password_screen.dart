import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightSpace(12),
                BackButtonWidget(),
                HeightSpace(28),
                SizedBox(
                  child: Text(
                    "Create new password",
                    style: AppStyles.primaryHeadLine,
                  ),
                ),
                HeightSpace(10),
                Text(
                  "Your new password must be unique from those previously used.",
                  style: AppStyles.subTitleStyles,
                ),
                HeightSpace(32),
                CustomTextField(
                  hintText: "Password",
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'New Password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                HeightSpace(15),
                CustomTextField(
                  hintText: "Confirm Password",
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

                HeightSpace(38),
                PrimaryButtonWidget(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      context.pushNamed(AppRoutes.passwordChangedScreen);
                    }
                  },
                  buttonText: "Reset Password",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
