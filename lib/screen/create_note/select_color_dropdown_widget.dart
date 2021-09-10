import 'package:flutter/material.dart';
import 'package:weekly_planner/model/create_note/color_item_model.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';

class SelectColorDropdownWidget extends StatefulWidget {
  @override
  _SelectColorDropdownWidgetState createState() =>
      _SelectColorDropdownWidgetState();
}

class _SelectColorDropdownWidgetState extends State<SelectColorDropdownWidget> {
  int? value = 1;

  final List<ColorItemModel> items = [
    ColorItemModel(color: Colors.purple, value: 1),
    ColorItemModel(color: Colors.amber, value: 2),
    ColorItemModel(color: Colors.cyan, value: 3)
  ];

  @override
  Widget build(BuildContext context) {
    return CustomDropdownWidget(
      items: items
          .map((item) => DropdownMenuItem(
              value: item.value,
              child: Container(
                height: 40,
                width: 40,
                color: item.color,
              )))
          .toList(),
      value: value,
    );
  }
}
