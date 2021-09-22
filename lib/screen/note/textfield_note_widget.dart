import 'package:flutter/material.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/theme/colors.dart';

class TextFieldNoteWidget extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TaskModel taskModel;
  TextFieldNoteWidget(this.taskModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "LEMBRAR DE",
            style: TextStyle(
              color: ColorUtil.mainStrongPurple,
              fontWeight: FontWeight.bold,
              fontSize: 9,
            ),
          ),
          Container(
            width: 100,
            child: Divider(
              height: 10,
              thickness: 1,
              color: ColorUtil.mainGray,
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.18,
              height: 200,
              child: TextField(
                readOnly: true,
                controller: textController..text = taskModel.text ?? "",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                style: TextStyle(color: ColorUtil.mainGray),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ))
        ],
      ),
    );
  }
}
