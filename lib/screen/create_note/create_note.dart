import 'package:flutter/material.dart';
import 'package:weekly_planner/screen/create_note/card_create_note_widget.dart';
import 'package:weekly_planner/screen/create_note/text_input_widget.dart';
import 'package:weekly_planner/screen/create_note/text_title_widget.dart';

class CreateNote extends StatefulWidget {
  @override
  _CreateNoteState createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: CardCreateNoteWidget(
          widgets: [TextTitleWidget(), TextInputWidget()],
        ),
      ),
    );
  }
}
