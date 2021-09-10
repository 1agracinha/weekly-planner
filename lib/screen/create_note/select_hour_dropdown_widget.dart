import 'package:flutter/material.dart';
import 'package:weekly_planner/models/create_note/hour_item_model.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';

class SelectHourDropdownWidget extends StatelessWidget {

  List<HourItemModel> hours = [
    HourItemModel(hour: "09:00", value: 1),
    HourItemModel(hour: "09:50", value: 2),
    HourItemModel(hour: "22:00", value: 3),
  ];

  int value = 1;

  @override
  Widget build(BuildContext context) {
    return CustomDropdownWidget(
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
