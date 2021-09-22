import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/model/create_note/hour_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';
import 'package:weekly_planner/theme/colors.dart';

class SelectHourDropdownWidget extends StatelessWidget {
  final value = 0;
  final List<HourItemModel> hours = Mock.hours;
  final CreateNoteController createNoteController;
  SelectHourDropdownWidget(this.createNoteController);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: CustomDropdownWidget(
        atualizarValor: () {
          createNoteController.hourItemModel.value.hour =
              Mock.hours[createNoteController.indice.value - 1].hour;
          createNoteController.hourItemModel.value.value = value;
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
                        color: ColorUtil.mainGray,
                      ),
                    ),
                    Text(
                      item.hour,
                      style: TextStyle(color: ColorUtil.mainGray),
                    )
                  ],
                )))
            .toList(),
        value: value,
      ),
    );
  }
}
