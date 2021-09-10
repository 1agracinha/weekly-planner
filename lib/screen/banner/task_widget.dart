import 'package:flutter/material.dart';
import 'package:weekly_planner/model/task_model.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel taskModel;
  TaskWidget({required this.taskModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              //TODO: aqui vai o visualizar tarefa
              return AlertDialog(
                content: Container(
                  color: taskModel.color,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("ID: ${taskModel.id}"),
                      Text("Text: ${taskModel.text}"),
                      Text("Color: ${taskModel.color}"),
                      Text("STATUS: ${taskModel.status}"),
                    ],
                  ),
                ),
              );
            });
      },
      child: Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.08,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: taskModel.color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    getStatusIcon(taskModel.status),
                    color: Color(0xFF460057),
                    size: 20,
                  ),
                ),
                Text(
                  (taskModel.text as dynamic),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 10, color: Color(0xFF460057)),
                )
              ],
            )),
      ),
    );
  }

  IconData? getStatusIcon(Status? status) {
    if (status == Status.done)
      return Icons.task_alt;
    else if (status == Status.blocked)
      return Icons.block;
    else if (status == Status.doing) return Icons.engineering_rounded;
    return null;
  }
}
