import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/controller/edit_note_controller.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/theme/colors.dart';

class TextFieldNoteWidget extends StatelessWidget {
  final EditNoteController editNoteController;
  final TextEditingController textController = TextEditingController();
  final TaskModel taskModel;
  TextFieldNoteWidget(this.taskModel, this.editNoteController);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 2),
            child: Text(
              "LEMBRAR DE",
              style: TextStyle(
                color: ColorUtil.mainStrongPurple,
                fontWeight: FontWeight.bold,
                fontSize: 9,
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.18,
              height: 200,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: editNoteController.isEditing.value
                      ? Colors.white
                      : taskModel.color,
                  borderRadius: BorderRadius.circular(5),
                  border: editNoteController.isEditing.value
                      ? Border.all(
                          width: 1, color: ColorUtil.mainGray.withOpacity(0.5))
                      : null),
              child: TextField(
                readOnly: editNoteController.isEditing.value ? false : true,
                controller: textController..text = taskModel.text ?? "",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                autofocus: true,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ))
        ],
      ),
    );
  }
}
