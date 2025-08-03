import 'package:flutter/material.dart';
import 'package:ibsra_mobile_application/core/themes/app_theme.dart';
<<<<<<< HEAD
import 'package:ibsra_mobile_application/core/utils/app_router.dart';
=======
import 'package:ibsra_mobile_application/features/auth/presentation/views/on_boarding_view.dart';
>>>>>>> 4384a3b (update: add login design)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingView(),
>>>>>>> 4384a3b (update: add login design)
      theme: AppTheme.lightModeTheme,
    );
  }
}
