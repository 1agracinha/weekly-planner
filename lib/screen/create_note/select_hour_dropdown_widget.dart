import 'package:flutter/material.dart';
import 'package:weekly_planner/model/create_note/hour_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';

class SelectHourDropdownWidget extends StatelessWidget {
  List<HourItemModel> hours = Mock.hours;

  int value = 0;

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
