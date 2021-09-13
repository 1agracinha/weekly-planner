import 'package:flutter/material.dart';

class TaskModel {
  String? text;
  String? dayOfWeek;
  Status? status;
  int? id;
  Color? color;
  String? hour;

  TaskModel(
      {this.color, this.dayOfWeek, this.hour, this.id, this.status, this.text});

  // TaskModel.fromDocument(DocumentSnapshot document) {
  //   var data = document.data() as dynamic;
  //   id = document.id as int;
  //   hour = data['hour'] as DateTime;
  //   dayOfWeek = data['dayOfWeek'] as String;
  //   color = data['color'] as Color;
  //   status = data['periodo'] as Status;
  // }

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
