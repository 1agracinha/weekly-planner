import 'package:flutter/material.dart';
import 'package:weekly_planner/model/create_note/date_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';

class SelectDateDropdownWidget extends StatelessWidget {
  final List<DateItemModel> dates = Mock.dates;

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return CustomDropdownWidget(
        items: dates
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
