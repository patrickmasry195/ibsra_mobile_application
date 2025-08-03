import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/sign_up_view.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: Styles.specialTitle30,
              ),
              SizedBox(height: 44.0),
              SvgPicture.asset(Assets.imagesLockIcon),
              SizedBox(height: 48.0),
              AuthTextFormField(hintText: 'Email'),
              SizedBox(height: 13.0),
              AuthTextFormField(hintText: 'Password'),
              SizedBox(height: 13.0),
              ForgetPassword(onTap: () {}),
              SizedBox(height: 13.0),
              PrimaryButton(text: 'Registrasi'),
              SizedBox(height: 33.0),
              Text('Atau login dengan'),
              SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthSocialButton(
                    onPressed: () {},
                    icon: Assets.imagesGoogleLogo,
                  ),
                  SizedBox(width: 21.0),
                  AuthSocialButton(
                    onPressed: () {},
                    icon: Assets.imagesPhone,
                  ),
                ],
              ),
              SizedBox(height: 33.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah punya akun? ',
                    style: Styles.linkStyle12,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => SignUpView(),
                      ),
                    ),
                    child: Text(
                      'SignUp',
                      style: Styles.linkStyle12.copyWith(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
