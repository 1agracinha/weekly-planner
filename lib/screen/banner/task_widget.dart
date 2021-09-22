import 'package:flutter/material.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/screen/note/note.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel taskModel;
  final bool enable;
  TaskWidget({required this.taskModel, this.enable = true});
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: enable
            ? () {
                showDialog(
                    context: context,
                    builder: (context) {
                      //TODO: aqui vai o visualizar tarefa
                      return AlertDialog(
                        content: Container(child: Note(taskModel)),
                      );
                    });
              }
            : () {},
        child: Center(
          child: Container(
              color: taskModel.color,
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 8),
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: getIcon(taskModel.status)),
                  Text(
                    (taskModel.text as dynamic),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 10,
                        color: taskModel.status != Status.todo
                            ? taskModel.status == Status.blocked
                                ? Colors.red
                                : taskModel.status == Status.done
                                    ? Colors.green
                                    : Colors.black
                            : Colors.black),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Icon getIcon(Status? status) {
    IconData? icon;
    Color color = Colors.black;
    if (status == Status.done) {
      icon = Icons.task_alt;
      color = Colors.green;
    } else if (status == Status.blocked) {
      icon = Icons.block;
      color = Colors.red;
    } else if (status == Status.doing) icon = Icons.engineering_rounded;
    return Icon(
      icon,
      color: color,
      size: 20,
    );
  }
}
