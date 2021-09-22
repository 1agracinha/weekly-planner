import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weekly_planner/theme/colors.dart';

class CustomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: ColorUtil.mainPurple,
          offset: Offset(0, 4),
          blurRadius: 6,
        )
      ]),
      child: AppBar(
        backgroundColor: ColorUtil.mainPurple,
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
