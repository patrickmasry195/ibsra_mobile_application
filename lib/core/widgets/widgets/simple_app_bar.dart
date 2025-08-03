import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SimpleAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      backgroundColor: Colors.white,
      titleSpacing: 0,
      leadingWidth: 38,
      leading: Padding(
        padding: EdgeInsets.only(left: 14, bottom: 4),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(CupertinoIcons.back, color: Colors.blueAccent, size: 20),
        ),
      ),
      title: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Text(
          title,
          style: TextStyle(
            fontFamily: GoogleFonts.aleo().fontFamily,
            fontSize: 20,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
