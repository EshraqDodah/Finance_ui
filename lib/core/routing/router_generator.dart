import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
import 'package:finance_ui/features/auth/register_screen.dart';
import 'package:finance_ui/features/main_screen/main_screen.dart';
import 'package:finance_ui/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_ui/features/otp/otp_verification_screen.dart';
import 'package:finance_ui/features/password/create_new_password_screen.dart';
import 'package:finance_ui/features/password/forgot_password_screen.dart';
import 'package:finance_ui/features/password/password_changed_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator{
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
        GoRoute(
          path: AppRoutes.onBoardingScreen,
          name: AppRoutes.onBoardingScreen,
          builder: (context, state) => OnBoardingScreen(),
        ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPasswordScreen,
        name: AppRoutes.forgotPasswordScreen,
        builder: (context, state) => ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.createNewPasswordScreen,
        name: AppRoutes.createNewPasswordScreen,
        builder: (context, state) => CreateNewPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.passwordChangedScreen,
        name: AppRoutes.passwordChangedScreen,
        builder: (context, state) => PasswordChangedScreen(),
      ),
      GoRoute(
        path: AppRoutes.otpVerificationScreen,
        name: AppRoutes.otpVerificationScreen,
        builder: (context, state) => OtpVerificationScreen(),
      ),
      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => MainScreen(),
      ),
    ],
  );

}