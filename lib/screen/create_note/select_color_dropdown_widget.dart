import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/model/create_note/color_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';

class SelectColorDropdownWidget extends StatefulWidget {
  CreateNoteController createNoteController;
  SelectColorDropdownWidget(this.createNoteController);
  @override
  _SelectColorDropdownWidgetState createState() =>
      _SelectColorDropdownWidgetState();
}

class _SelectColorDropdownWidgetState extends State<SelectColorDropdownWidget> {
  int? value = 1;

  final List<ColorItemModel> items = Mock.colors;

  @override
  Widget build(BuildContext context) {
    return CustomDropdownWidget(
      atualizarValor: () {
        widget.createNoteController.colorItemModel.value.color =
            Mock.colors[widget.createNoteController.indice.value - 1].color;
        print(
            "MOCK COLOR: ${Mock.colors[widget.createNoteController.indice.value].color}");
      },
      createNoteController: widget.createNoteController,
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
