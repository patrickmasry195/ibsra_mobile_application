import 'package:go_router/go_router.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/on_boarding_view.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/sign_up_view.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/login_view.dart';

abstract class AppRouter {
  static const kSignUpView = "/signup_view";
  static const kLoginView = "/login_view";

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => OnboardingView()),
      GoRoute(path: kSignUpView, builder: (context, state) => SignUpView()),
      GoRoute(path: kLoginView, builder: (context, state) => LoginView()),

    ],
  );
}
