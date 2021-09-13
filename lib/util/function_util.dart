import 'package:flutter/material.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/util/list_util.dart';

class FunctionUtil {
  static listTasksOfDay(List<TaskModel> tasks) {
    clearList();
    for (int i = 0; i < tasks.length; i++) {
      var tasksIn = tasks[i].dayOfWeek as dynamic;
      if (tasksIn.toUpperCase().contains("SEG")) {
        ListUtil.segList.add(tasks[i]);
        print('SEG');
      } else if (tasksIn.toUpperCase().contains("TER")) {
        ListUtil.terList.add(tasks[i]);
        print('TER');
      } else if (tasksIn.toUpperCase().contains("QUA")) {
        ListUtil.quaList.add(tasks[i]);
        print('QUAR');
      } else if (tasksIn.toUpperCase().contains("QUI")) {
        ListUtil.quiList.add(tasks[i]);
        print('QUI');
      } else if (tasksIn.toUpperCase().contains("SEX")) {
        ListUtil.sexList.add(tasks[i]);
        print('SEX');
      } else if (tasksIn.toUpperCase().contains("SAB")) {
        ListUtil.sabList.add(tasks[i]);
        print('SAB');
      } else if (tasksIn.toUpperCase().contains("DOM")) {
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

  static void clearList() {
    ListUtil.segList.clear();
    ListUtil.terList.clear();
    ListUtil.quaList.clear();
    ListUtil.quiList.clear();
    ListUtil.sexList.clear();
    ListUtil.sabList.clear();
    ListUtil.domList.clear();
  }
}
