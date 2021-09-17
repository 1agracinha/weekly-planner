import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/screen/create_note/card_create_note_widget.dart';
import 'package:weekly_planner/screen/create_note/select_color_dropdown_widget.dart';
import 'package:weekly_planner/screen/create_note/select_date_dropdown_widget.dart';
import 'package:weekly_planner/screen/create_note/select_hour_dropdown_widget.dart';
import 'package:weekly_planner/screen/create_note/text_input_widget.dart';
import 'package:weekly_planner/screen/create_note/text_title_widget.dart';
import 'package:weekly_planner/shared/custom_button_widget.dart';

class CreateNote extends StatefulWidget {
  final CreateNoteController createNoteController;
  CreateNote(this.createNoteController);
  @override
  _CreateNoteState createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: CardCreateNoteWidget(
      widgets: [
        TextTitleWidget(),
        TextInputWidget(widget.createNoteController),
        SelectColorDropdownWidget(widget.createNoteController),
        SelectHourDropdownWidget(widget.createNoteController),
        SelectDateDropdownWidget(widget.createNoteController),
        CustomButtonWidget(
          onPressed: () {
            widget.createNoteController.addNote(context);
          },
          text: "add note",
        )
      ],
    ));
  }
}
