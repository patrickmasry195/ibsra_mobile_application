import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ibsra_mobile_application/core/widgets/widgets/simple_app_bar.dart' show SimpleAppBar;

import '../../../../core/widgets/widgets/app_button.dart';
import '../../../../core/widgets/widgets/spacing/vertical_space.dart';
import '../../../../core/widgets/verifications/app_otp_verification_text_field.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: "Cancel"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpace(15),
                Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontFamily: "OtamaEp",
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
                VerticalSpace(6),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  child: Text(
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                    "Please enter the 4-digit code sent to your phone number.",
                  ),
                ),
                VerticalSpace(41),
                AppOtpVerificationTextField(
                  onCompleted: (String value) {
                    //?go to create new password after request on api
                    // Navigator.of(context).pushNamed(
                    //   RoutesName.createNewPassword,
                    // );
                  },
                ),
                VerticalSpace(41),
                AppButton(
                  text: "Confirm",
                  onTap: () {
                    //?go to create new password after request on api
                  },
                ),
                VerticalSpace(6),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Resend code in 30 seconds",
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // verification code
  }
}
