import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ibsra_mobile_application/core/utils/app_router.dart';
import 'package:ibsra_mobile_application/core/utils/styles.dart';
import 'package:ibsra_mobile_application/core/widgets/primary_button.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/widgets/auth_social_button.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/widgets/auth_text_form_field.dart';
import 'package:ibsra_mobile_application/generated/assets.dart';
import 'forget_password.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
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
                  ForgetPassword(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kForgetScreen);
                    },
                  ),
                  SizedBox(height: 13.0),
                  PrimaryButton(
                    text: 'Login',
                    onPressed: () {
                      GoRouter.of(context).go(AppRouter.kOtpVerification);
                    },
                  ),
                  SizedBox(height: 33.0),
                  Text('or login with'),
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
                        'Don\'t have account ?',
                        style: Styles.linkStyle12,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kSignUpView);
                        },
                        child: Text(
                          '    SignUp',
                          style: Styles.linkStyle12.copyWith(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
