import 'package:flutter/material.dart';
import 'package:weekly_planner/models/create_note/date_item_model.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';

class SelectDateDropdownWidget extends StatelessWidget {
  final List<DateItemModel> hours = [
    DateItemModel(date: "Segunda", value: 1),
    DateItemModel(date: "Terça", value: 2),
    DateItemModel(date: "Quarta", value: 3),
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
                        Icons.calendar_today,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Text(
                      item.date,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )))
            .toList(),
        value: value);
  }
}
