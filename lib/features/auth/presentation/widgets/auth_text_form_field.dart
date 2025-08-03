import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

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
          contentPadding: EdgeInsets.only(left: 23.0),
          hintText: hintText,
          hintStyle: Styles.labelStyle14,
        ),
      ),
    );
  }
}
