import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffDDB8E7),
          offset: Offset(0, 4),
          blurRadius: 6,
        )
      ]),
      child: AppBar(
        backgroundColor: Color(0xffDDB8E7),
        elevation: 0.0,
        title: Center(
            child: Text(
          "Weekly Planner",
          style: GoogleFonts.getFont('Rochester',
              color: Colors.white, fontSize: 24),
        )),
      ),
    );
  }
}
