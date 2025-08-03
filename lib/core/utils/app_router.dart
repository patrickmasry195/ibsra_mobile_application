import 'package:go_router/go_router.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/forget_screen.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/on_boarding_view.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/sign_up_view.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/otp_verification_page.dart';

abstract class AppRouter {
  static const kSignUpView = "/signup_view";
  static const kLoginView = "/login_view";
  static const kForgetPassword = "/forget_password";
  static const KOtpVerification = "/otp_verification";

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => OnboardingView()),
      GoRoute(path: kSignUpView, builder: (context, state) => SignUpView()),
      GoRoute(path: kLoginView, builder: (context, state) => LoginView()),
      GoRoute(path: kForgetPassword, builder: (context, state) => ForgetPasswordPage()),
      GoRoute(path: KOtpVerification, builder: (context, state) => OtpVerificationPage()),

    ],
  );
}
