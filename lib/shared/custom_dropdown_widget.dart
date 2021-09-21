import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';

class CustomDropdownWidget extends StatelessWidget {
  dynamic value;
  final Function atualizarValor;
  final List<DropdownMenuItem<dynamic>> items;
  final CreateNoteController createNoteController;

  CustomDropdownWidget({
    required this.items,
    required this.value,
    required this.atualizarValor,
    required this.createNoteController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          DropdownButtonFormField<dynamic>(
            isExpanded: true,
            value: value,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
              ),
            ),
            onChanged: (_value) {
              value = _value;
              createNoteController.indice.value = value;
              atualizarValor();
            },
            items: items,
          )
        ],
      ),
    );
  }
}
