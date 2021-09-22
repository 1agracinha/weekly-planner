import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/edit_note_controller.dart';
import 'package:weekly_planner/theme/colors.dart';

class ButtonNoteWidget extends StatelessWidget {
  final String text;
  final Widget prefixWidget;
  final EditNoteController editNoteController;
  ButtonNoteWidget(
      {required this.text,
      required this.prefixWidget,
      required this.editNoteController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 1150
          ? MediaQuery.of(context).size.width * 0.42
          : MediaQuery.of(context).size.width * 0.22,
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorUtil.mainGray.withOpacity(0.5),
              offset: Offset(0, 2),
              blurRadius: 4,
            )
          ]),
      child: Row(
        mainAxisAlignment: editNoteController.isEditing.value
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          prefixWidget,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: ColorUtil.mainGray),
            ),
          ),
          Visibility(
            visible: editNoteController.isEditing.value,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: ColorUtil.mainStrongPurple,
                )),
          )
        ],
      ),
    );
  }
}
