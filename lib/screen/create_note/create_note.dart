import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/screen/create_note/card_create_note_widget.dart';
import 'package:weekly_planner/screen/create_note/select_color_dropdown_widget.dart';
import 'package:weekly_planner/screen/create_note/select_date_dropdown_widget.dart';
import 'package:weekly_planner/screen/create_note/select_hour_dropdown_widget.dart';
import 'package:weekly_planner/screen/create_note/text_input_widget.dart';
import 'package:weekly_planner/screen/create_note/text_title_widget.dart';
import 'package:weekly_planner/shared/custom_button_widget.dart';

class CreateNote extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<CreateNoteController>(
      builder: (createNoteController) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.3,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.025),
          child: Form(
            child: CardCreateNoteWidget(
              widgets: [
                TextTitleWidget(),
                TextInputWidget(createNoteController),
                SelectColorDropdownWidget(createNoteController),
                SelectHourDropdownWidget(createNoteController),
                SelectDateDropdownWidget(createNoteController),
                CustomButtonWidget(
                  onPressed: () {
                    if (!validateForm(createNoteController))
                      Get.snackbar("Ops!",
                          "certifique-se de que todos os campos foram preenchidos!",
                          backgroundColor: Colors.orangeAccent,
                          snackPosition: SnackPosition.BOTTOM);
                    else
                      createNoteController.addNote(context);
                  },
                  text: "add note",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool validateForm(CreateNoteController controller) {
    if (controller.textNote.value == "undefined")
      return false;
    else if (controller.hourItemModel.value.value == 0)
      return false;
    else if (controller.dateItemModel.value.value == 0) return false;
    return true;
  }
}
