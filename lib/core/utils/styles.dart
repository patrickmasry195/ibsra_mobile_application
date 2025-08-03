import 'package:flutter/material.dart';

abstract class Styles {
  // Titles / Headers (Login, Register, Section Headers)
  static const titleStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700, // Bold
  );

  static const titleStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600, // Semi-Bold
  );

  // Form Labels / Input Placeholder
  static const labelStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400, // Regular
  );

  // Button Text
  static const buttonStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600, // Semi-Bold
  );

  // Link Text (Forgot Password, Already have account)
  static const linkStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400, // Regular
  );

  // Course Title / List Item Titles
  static const listItemStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500, // Medium
  );

  // Course Details (Dates, Minor Text)
  static const smallTextStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400, // Regular
  );

  // Special Title
  static const specialTitle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
}
