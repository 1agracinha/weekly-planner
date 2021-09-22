import 'package:flutter/material.dart';
import 'package:weekly_planner/controller/edit_note_controller.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/screen/note/button_note_widget.dart';
import 'package:weekly_planner/theme/colors.dart';

class ButtonsNote extends StatelessWidget {
  final EditNoteController editNoteController;
  final TaskModel taskModel;
  ButtonsNote(this.taskModel, this.editNoteController);
  String _textStatus = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonNoteWidget(
            prefixWidget: getIconStatus(taskModel.status),
            text: _textStatus,
            editNoteController: editNoteController,
          ),
          ButtonNoteWidget(
            prefixWidget: Container(
              height: 20,
              width: 20,
              color: taskModel.color,
            ),
            text: "cor selecionada",
            editNoteController: editNoteController,
          ),
          ButtonNoteWidget(
            prefixWidget: Text(
              "${taskModel.hour}",
              style: TextStyle(fontSize: 14),
            ),
            text: "hora selecionada",
            editNoteController: editNoteController,
          ),
          ButtonNoteWidget(
            prefixWidget: Text(
              "${taskModel.dayOfWeek}",
              style: TextStyle(fontSize: 14),
            ),
            text: "dia selecionado",
            editNoteController: editNoteController,
          ),
          TextButton(
              onPressed: () {
                editNoteController.isEditing.value = true;
              },
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all(ColorUtil.mainPurple)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "editar nota",
                  style: TextStyle(color: ColorUtil.mainStrongPurple),
                ),
              ))
        ],
      ),
    );
  }

  Icon getIconStatus(Status? status) {
    IconData? icon;
    Color color = Colors.black;
    if (status == Status.done) {
      icon = Icons.task_alt;
      color = Colors.green;
      _textStatus = "concluído";
    } else if (status == Status.blocked) {
      icon = Icons.block;
      color = Colors.red;
      _textStatus = "Bloqueado";
    } else if (status == Status.doing) {
      icon = Icons.engineering_rounded;
      _textStatus = "Em andamento";
    } else {
      icon = Icons.playlist_play;
      _textStatus = "Não iniciada";
      color = ColorUtil.mainPurple;
    }
    return Icon(
      icon,
      color: color,
      size: 20,
    );
  }
}
