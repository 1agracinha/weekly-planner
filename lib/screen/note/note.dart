import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/screen/note/buttons_note.dart';
import 'package:weekly_planner/screen/note/header_note_widget.dart';
import 'package:weekly_planner/screen/note/textfield_note_widget.dart';

class Note extends StatelessWidget {
  final TaskModel taskModel;
  Note(this.taskModel);
  @override
  Widget build(BuildContext context) {
    closeOnOversize(context);
    return Container(
      width: MediaQuery.of(context).size.width < 1150
          ? MediaQuery.of(context).size.width * 0.8
          : MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        children: [
          HeaderNoteWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [TextFieldNoteWidget(taskModel), ButtonsNote(taskModel)],
          )
        ],
      ),
    );
  }

  closeOnOversize(BuildContext context) {
    if (MediaQuery.of(context).size.height < 430 ||
        MediaQuery.of(context).size.width < 930) {
      Get.back();
    }
  }
}
