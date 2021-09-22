import 'package:flutter/material.dart';
import 'package:weekly_planner/theme/colors.dart';

class TextTitleWidget extends StatelessWidget {
  final String title;
  TextTitleWidget(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(color: ColorUtil.mainGray, fontSize: 26),
      ),
    );
  }
}
