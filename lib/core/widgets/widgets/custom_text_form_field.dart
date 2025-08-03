import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.borderRadius,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    required this.keyboardType,
    this.controller,
    this.fillColor,
    this.textAlign,
    this.focusNode,
    this.onChanged,
    this.useDefaultErrorBuilder = true,
  });

  final String? hintText;
  final double? borderRadius;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final Color? fillColor;
  final TextAlign? textAlign;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final bool useDefaultErrorBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: HeightsManager.h44,
      child: TextFormField(
        // errorBuilder: useDefaultErrorBuilder == true
        //     ? null
        //     : (context, errorText) => SizedBox(),
        focusNode: focusNode,
        textAlign: textAlign ?? TextAlign.start,
        controller: controller,
        obscuringCharacter: '*',
        onChanged: onChanged,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: TextStyle(color: Colors.black, fontSize: 14),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? Colors.grey[200],
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[900]),
          suffixIcon: Padding(padding: EdgeInsets.zero, child: suffixIcon),

          suffixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 0),

          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular((10)),
            borderSide: BorderSide(color: Colors.grey[300] ?? Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            borderSide: BorderSide(color: Colors.grey[300] ?? Colors.grey),
          ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(
          //     widget.borderRadius ?? BorderRadiusManager.br10,
          //   ),
          //   borderSide: BorderSide(color: ColorManager.kBoldRedColor),
          // ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            borderSide: BorderSide(color: Colors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
