import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/model/create_note/hour_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';

class SelectHourDropdownWidget extends StatelessWidget {
  List<HourItemModel> hours = Mock.hours;
  CreateNoteController createNoteController;
  SelectHourDropdownWidget(this.createNoteController);

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return CustomDropdownWidget(
        atualizarValor: () {
          createNoteController.hourItemModel.value.hour =
              Mock.hours[createNoteController.indice.value - 1].hour;
        },
        createNoteController: createNoteController,
        items: hours
            .map((item) => DropdownMenuItem(
                value: item.value,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.alarm,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Text(
                      item.hour,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )))
            .toList(),
        value: value);
  }
}
