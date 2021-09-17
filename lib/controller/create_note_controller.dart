import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/data/create_note_data.dart';
import 'package:weekly_planner/model/create_note/color_item_model.dart';
import 'package:weekly_planner/model/create_note/date_item_model.dart';
import 'package:weekly_planner/model/create_note/hour_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/shared/custom_dialogs.dart';

class CreateNoteController extends GetxController {
  Rx<String> id = "".obs;
  Rx<int> indice = 0.obs;
  Rx<Status> status = Status.todo.obs;
  Rx<String> textNote = "undefined".obs;
  var listTaskModel = <TaskModel>[].obs;
  CreateNoteData createNoteData = CreateNoteData();
  Rx<ColorItemModel> colorItemModel =
      ColorItemModel(color: Mock.colors[0].color, value: 0).obs;
  Rx<DateItemModel> dateItemModel =
      DateItemModel(date: "segunda", value: 0).obs;
  Rx<HourItemModel> hourItemModel = HourItemModel(hour: "00:00", value: 0).obs;

  Future<bool> addNote(BuildContext context) async {
    bool isSuccess = false;
    TaskModel note = TaskModel(
      id: id.value,
      color: colorItemModel.value.color,
      dayOfWeek: dateItemModel.value.date,
      hour: hourItemModel.value.hour,
      status: status.value,
      text: textNote.value,
    );

    createNoteData.addNote(toMap(note)).then((data) {
      id.value = data.id;
      if (id.value.isNotEmpty) {
        CustomDialogs.successOperation(
            context: context, text: "Sucesso! Nota adicionada *-*");
        listTaskModel.add(TaskModel(
          id: data.id,
          color: colorItemModel.value.color,
          dayOfWeek: dateItemModel.value.date,
          hour: hourItemModel.value.hour,
          status: status.value,
          text: textNote.value,
        ));
      } else
        CustomDialogs.failOperation(
            context: context, text: "Falha ao adicionar nota! :(");
    });

    return isSuccess;
  }

  static Map<String, dynamic> toMap(TaskModel obj) {
    return {
      'color': "${obj.color}",
      'dayOfWeek': "${obj.dayOfWeek}",
      "hour": "${obj.hour}",
      "status": "${obj.status}",
      "text": "${obj.text}"
    };
  }
}
