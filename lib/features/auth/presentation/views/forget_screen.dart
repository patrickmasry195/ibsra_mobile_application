import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otp_verification_page.dart';
import '../../../../core/widgets/widgets/app_button.dart';
import '../../../../core/widgets/widgets/custom_required_field.dart';
import '../../../../core/widgets/widgets/simple_app_bar.dart';
import '../../../../core/widgets/widgets/spacing/vertical_space.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: "Back"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpace(15),
                Text(
                  "forget Your Password",
                  style: TextStyle(
                    fontFamily: GoogleFonts.aleo().fontFamily,
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
                VerticalSpace(6),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    "please Enter The Phone Number And We Will Send You Otp To Reset Your Password",
                  ),
                ),
                VerticalSpace(100),
                CustomRequiredField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: TextEditingController(),
                  title: "Phone Number",
                  hintText: "enter Your Phone Number",
                ),
                VerticalSpace(151),
                AppButton(
                  text: "send Code",
                  onTap: () {
                    // //?go to otp page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpVerificationPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
