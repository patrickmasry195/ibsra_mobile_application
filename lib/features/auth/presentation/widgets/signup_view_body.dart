import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ibsra_mobile_application/core/utils/app_router.dart';

import '../../../../core/utils/styles.dart';
import '../../../../generated/assets.dart';
import 'auth_social_button.dart';
import 'auth_text_form_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
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
                    'Register',
                    style: Styles.specialTitle30,
                  ),
                  SizedBox(height: 44.0),
                  SvgPicture.asset(Assets.imagesLockIcon),
                  SizedBox(height: 48.0),
                  AuthTextFormField(hintText: 'Email'),
                  SizedBox(height: 13.0),
                  AuthTextFormField(hintText: 'Password'),
                  SizedBox(height: 13.0),
                  AuthTextFormField(hintText: 'Confirm Password'),
                  SizedBox(height: 13.0),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      height: 60.0,
                      color: Colors.blue,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Register',
                        style: Styles.buttonStyle16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 33.0),
                  Text('or register with'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have account?"),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).pushNamed(AppRouter.kLoginView);
                        },
                        child: Text("Login"),
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
