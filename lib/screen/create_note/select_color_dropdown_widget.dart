import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/model/create_note/color_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/shared/custom_dropdown_widget.dart';
import 'package:weekly_planner/theme/colors.dart';

class SelectColorDropdownWidget extends StatefulWidget {
  final CreateNoteController createNoteController;
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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: CustomDropdownWidget(
        atualizarValor: () {
          widget.createNoteController.colorItemModel.value.color =
              Mock.colors[widget.createNoteController.indice.value - 1].color;
        },
        createNoteController: widget.createNoteController,
        items: items
            .map((item) => DropdownMenuItem(
                value: item.value,
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 10),
                      color: item.color,
                    ),
                    Text(
                      item.color
                          .toString()
                          .replaceAll("Color(0xff", "#")
                          .replaceAll(")", ""),
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
