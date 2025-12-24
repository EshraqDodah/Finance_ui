import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomPromptActionText extends StatelessWidget {

  final String normalText;
  final String actionText;
  final VoidCallback? onTap;

  const CustomPromptActionText({
    super.key,
    required this.normalText,
    required this.actionText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text:normalText,
              style: AppStyles.black15BoldStyle.copyWith(color: AppColors.primaryColor , fontWeight: FontWeight.w500),
            ),
            TextSpan(
              text:actionText,
              style: AppStyles.black15BoldStyle,
              recognizer: onTap!=null
                  ? (TapGestureRecognizer()..onTap = onTap)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
