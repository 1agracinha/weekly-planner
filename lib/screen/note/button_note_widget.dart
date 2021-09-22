import 'package:flutter/material.dart';
import 'package:weekly_planner/theme/colors.dart';

class ButtonNoteWidget extends StatelessWidget {
  final String text;
  final Widget prefixWidget;
  ButtonNoteWidget({required this.text, required this.prefixWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 1150
          ? MediaQuery.of(context).size.width * 0.42
          : MediaQuery.of(context).size.width * 0.18,
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorUtil.mainGray.withOpacity(0.5),
              offset: Offset(0, 2),
              blurRadius: 4,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          prefixWidget,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: ColorUtil.mainGray),
            ),
          )
        ],
      ),
    );
  }
}
