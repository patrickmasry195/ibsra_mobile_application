import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Forgot Password?',
            style: Styles.labelStyle14,
          ),
        ),
      ],
    );
  }
}
