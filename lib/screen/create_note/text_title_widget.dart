import 'package:flutter/material.dart';
import 'package:weekly_planner/theme/colors.dart';

class TextTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Text(
        "Adicionar nota à semana?",
        style: TextStyle(color: ColorUtil.mainGray, fontSize: 26),
      ),
    );
  }
}
