import 'package:flutter/material.dart';
import 'package:weekly_planner/model/task_model.dart';

class Mock {
  static List<TaskModel> tasks = [
    TaskModel(
        text: "Fazer Compras do mês",
        color: Color(0xffFFE790),
        dayOfWeek: "SEG",
        hour: DateTime.now(),
        id: 12,
        status: Status.todo),
    TaskModel(
        text: "Dar banho no dog",
        color: Color(0xffFDFF90),
        dayOfWeek: "SEG",
        hour: DateTime.now(),
        id: 13,
        status: Status.todo),
    TaskModel(
        text: "Trabalhar",
        color: Color(0xffFFE7F1),
        dayOfWeek: "TER",
        hour: DateTime.now(),
        id: 14,
        status: Status.done),
    TaskModel(
        text: "Fazer exercicios",
        color: Color(0xffD2CFFC),
        dayOfWeek: "QUA",
        hour: DateTime.now(),
        id: 15,
        status: Status.blocked),
    TaskModel(
        text: "pagar fatura",
        color: Color(0xffEEEEEE),
        dayOfWeek: "QUI",
        hour: DateTime.now(),
        id: 16,
        status: Status.todo),
    TaskModel(
        text: "Ir ao medico",
        color: Color(0xffADFFAB),
        dayOfWeek: "QUI",
        hour: DateTime.now(),
        id: 17,
        status: Status.doing),
    TaskModel(
        text: "Realizar matricula",
        color: Color(0xffFFCFC0),
        dayOfWeek: "QUI",
        hour: DateTime.now(),
        id: 18,
        status: Status.todo),
    TaskModel(
        text: "Aula",
        color: Color(0xffD3F5FF),
        dayOfWeek: "DOM",
        hour: DateTime.now(),
        id: 19,
        status: Status.todo),
    TaskModel(
        text: "tirar cnh",
        color: Color(0xffE4ADF8),
        dayOfWeek: "DOM",
        hour: DateTime.now(),
        id: 20,
        status: Status.todo),
  ];
}
