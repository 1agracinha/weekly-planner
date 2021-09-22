import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/controller/edit_note_controller.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/screen/note/buttons_note.dart';
import 'package:weekly_planner/screen/note/header_note_widget.dart';
import 'package:weekly_planner/screen/note/textfield_note_widget.dart';
import 'package:weekly_planner/shared/custom_button_widget.dart';

class Note extends StatelessWidget {
  final TaskModel taskModel;
  Note(this.taskModel);
  @override
  Widget build(BuildContext context) {
    closeOnOversize(context);
    return Container(
      width: MediaQuery.of(context).size.width < 1150
          ? MediaQuery.of(context).size.width * 0.8
          : MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.6,
      child: GetBuilder<EditNoteController>(
        builder: (editNoteController) => Column(
          children: [
            HeaderNoteWidget(editNoteController),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      TextFieldNoteWidget(taskModel, editNoteController),
                      Visibility(
                        visible: editNoteController.isEditing.value,
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: CustomButtonWidget(
                              text: "salvar alterações", onPressed: () {}),
                        ),
                      )
                    ],
                  ),
                  ButtonsNote(taskModel, editNoteController)
                ],
              ),
            )
          ],
        ),
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
