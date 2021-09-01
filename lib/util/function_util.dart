import 'package:flutter/material.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/util/list_util.dart';

class FunctionUtil {
  static listTasksOfDay(List<TaskModel> tasks) {
    for (int i = 0; i < tasks.length; i++) {
      var tasksIn = tasks[i].dayOfWeek as dynamic;
      if (tasksIn.contains("SEG")) {
        ListUtil.segList.add(tasks[i]);
        print('SEG');
      } else if (tasksIn.contains("TER")) {
        ListUtil.terList.add(tasks[i]);
        print('TER');
      } else if (tasksIn.contains("QUA")) {
        ListUtil.quaList.add(tasks[i]);
        print('QUAR');
      } else if (tasksIn.contains("QUI")) {
        ListUtil.quiList.add(tasks[i]);
        print('QUI');
      } else if (tasksIn.contains("SEX")) {
        ListUtil.sexList.add(tasks[i]);
        print('SEX');
      } else if (tasksIn.contains("SAB")) {
        ListUtil.sabList.add(tasks[i]);
        print('SAB');
      } else if (tasksIn.contains("DOM")) {
        ListUtil.domList.add(tasks[i]);
        print('DOM');
      }
    }
  }

  static List<List<TaskModel>> listTasksDayOfWeek(BuildContext context) {
    List<List<TaskModel>> lista = [
      ListUtil.segList,
      ListUtil.terList,
      ListUtil.quaList,
      ListUtil.quiList,
      ListUtil.sexList,
      ListUtil.sabList,
      ListUtil.domList
    ];

    return lista;
  }
}
