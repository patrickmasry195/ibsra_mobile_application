import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibsra_mobile_application/core/utils/styles.dart';
import '../../../../generated/assets.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Text(
                      'Sign Up',
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
                        child: Text('Registrasi'),
                      ),
                    ),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthSocialButton extends StatelessWidget {
  const AuthSocialButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 21.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 23.0),
          hintText: hintText,
        ),
      ),
    );
  }
}
