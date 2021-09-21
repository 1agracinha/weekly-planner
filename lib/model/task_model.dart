import 'package:flutter/material.dart';

class TaskModel {
  String? text;
  String? dayOfWeek;
  Status? status;
  String? id;
  Color? color;
  String? hour;

  TaskModel({
    this.color,
    this.dayOfWeek,
    this.hour,
    this.id,
    this.status,
    this.text,
  });

  TaskModel fromDocument(data) {
    return TaskModel(
      color: convertStringToColor(data["color"]),
      dayOfWeek: data["dayOfWeek"],
      hour: data["hour"],
      status: convertStringToStatus(data["status"]),
      text: data["text"],
    );
  }

  Color convertStringToColor(String stringColor) {
    int convertString = int.parse(
      stringColor.replaceAll("Color(", "").replaceAll(")", ""),
    );
    return Color(convertString);
  }

  Status? convertStringToStatus(String stringStatus) {
    Status? convertStatus;

    if (stringStatus.contains("todo"))
      convertStatus = Status.todo;
    else if (stringStatus.contains("doing"))
      convertStatus = Status.doing;
    else if (stringStatus.contains("done"))
      convertStatus = Status.done;
    else if (stringStatus.contains("blocked")) convertStatus = Status.blocked;

    return convertStatus;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'text': this.text,
      'status': this.status,
      'dayOfWeek': this.dayOfWeek,
      'color': this.color,
      'hour': this.hour
    };
  }
}

enum Status { done, blocked, todo, doing }
