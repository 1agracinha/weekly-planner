import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/screen/create_note/text_title_widget.dart';
import 'package:weekly_planner/theme/colors.dart';

class HeaderNoteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextTitleWidget("Detalhes da tarefa"),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.close,
            size: 32,
            color: ColorUtil.mainGray,
          ),
        ),
      ],
    );
  }
}
