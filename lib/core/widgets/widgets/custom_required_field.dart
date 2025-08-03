import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_text_form_field.dart';
import 'spacing/vertical_space.dart';

class CustomRequiredField extends StatelessWidget {
  const CustomRequiredField({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.validator,
    this.onChanged,
    required this.keyboardType,
  });

  final String hintText;
  final TextEditingController controller;
  final String title;
  final TextInputType keyboardType;
  final String? Function(String? value)? validator;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
        VerticalSpace(6),
        CustomTextFormField(
          onChanged: onChanged,
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          hintText: hintText,
        ),
      ],
    );
  }
}
