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
                    createNoteController.addNote(context);
                  },
                  text: "add note",
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
