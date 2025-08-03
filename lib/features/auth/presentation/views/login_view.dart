import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ibsra_mobile_application/core/utils/app_router.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/widgets/login_view_body.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../generated/assets.dart';
import '../widgets/auth_social_button.dart';
import '../widgets/auth_text_form_field.dart';
import '../widgets/forget_password.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}
