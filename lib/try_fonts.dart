import 'package:flutter/material.dart';
import 'package:ibsra_mobile_application/core/utils/styles.dart';

class TryFonts extends StatelessWidget {
  const TryFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My text", style: Styles.buttonStyle16),
            SizedBox(height: 5),
            Text("My text", style: Styles.labelStyle14),
            SizedBox(height: 5),
            Text("My text", style: Styles.linkStyle12),
            SizedBox(height: 5),
            Text("My text", style: Styles.listItemStyle14),
            SizedBox(height: 5),
            Text("My text", style: Styles.smallTextStyle12),
            SizedBox(height: 5),
            Text("My text", style: Styles.specialTitle30),
            SizedBox(height: 5),
            Text("My text", style: Styles.titleStyle18),
            SizedBox(height: 5),
            Text("My text", style: Styles.titleStyle24),
          ],
        ),
      ),
    );
  }
}
