import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/model/create_note/date_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';
import 'package:weekly_planner/theme/colors.dart';

class SelectDateDropdownWidget extends StatelessWidget {
  final int value = 0;
  final List<DateItemModel> dates = Mock.dates;
  final CreateNoteController createNoteController;
  SelectDateDropdownWidget(this.createNoteController);

  @override
  Widget build(BuildContext context) {
    return CustomDropdownWidget(
        atualizarValor: () {
          createNoteController.dateItemModel.value.date =
              Mock.dates[createNoteController.indice.value].date;
        },
        createNoteController: createNoteController,
        items: dates
            .map((item) => DropdownMenuItem(
                value: item.value,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.calendar_today,
                        color: ColorUtil.mainGray,
                      ),
                    ),
                    Text(
                      item.date,
                      style: TextStyle(color: ColorUtil.mainGray),
                    )
                  ],
                )))
            .toList(),
        value: value);
  }
}
