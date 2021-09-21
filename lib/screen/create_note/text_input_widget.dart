import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';

class TextInputWidget extends StatelessWidget {
  TextInputWidget(this.createNoteController);
  final CreateNoteController createNoteController;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: TextFormField(
        controller: controller,
        expands: true,
        maxLines: null,
        textAlignVertical: TextAlignVertical.top,
        onChanged: (text) {
          createNoteController.textNote.value = controller.text;
        },
        decoration: InputDecoration(
          hintText: "lembrar de ...",
          hintStyle: TextStyle(color: Colors.grey.shade400),
          fillColor: Colors.amber,
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
    );
  }
}
