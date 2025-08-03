import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        height: 86,
        width: 96,
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
