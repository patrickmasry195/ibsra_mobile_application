import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.height,
    this.textColor,
    this.fontSize,
    this.borderRadius,
  });

  final String text;
  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final double? fontSize;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, height ?? 44),
          backgroundColor: backgroundColor ?? Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ?? BorderRadius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: fontSize ?? 14,
                  ),
                ),
      
    );
  }
}
