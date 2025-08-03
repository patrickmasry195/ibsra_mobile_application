import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ibsra_mobile_application/core/themes/app_theme.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/sign_up_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpView(),
      theme: AppTheme.lightModeTheme,
    );
  }
}
