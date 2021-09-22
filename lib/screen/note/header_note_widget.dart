import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/controller/edit_note_controller.dart';
import 'package:weekly_planner/screen/create_note/text_title_widget.dart';
import 'package:weekly_planner/theme/colors.dart';

class HeaderNoteWidget extends StatelessWidget {
  final EditNoteController editNoteController;
  HeaderNoteWidget(this.editNoteController);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextTitleWidget("Detalhes da tarefa"),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            editNoteController.isEditing.value = false;
            Get.back();
          },
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
