import 'package:flutter/material.dart';
import 'package:weekly_planner/model/create_note/color_item_model.dart';
import 'package:weekly_planner/model/create_note/date_item_model.dart';
import 'package:weekly_planner/model/create_note/hour_item_model.dart';
import 'package:weekly_planner/model/task_model.dart';

class Mock {
  static List<ColorItemModel> colors = [
    ColorItemModel(color: Color(0xffFFCFC0), value: 1),
    ColorItemModel(color: Color(0xffFFE790), value: 2),
    ColorItemModel(color: Color(0xffFDFF90), value: 3),
    ColorItemModel(color: Color(0xffE4ADF8), value: 4),
    ColorItemModel(color: Color(0xffFFE7F1), value: 5),
    ColorItemModel(color: Color(0xffD2CFFC), value: 6),
    ColorItemModel(color: Color(0xffD3F5FF), value: 7),
    ColorItemModel(color: Color(0xffADFFAB), value: 8),
    ColorItemModel(color: Color(0xffB7B7B7), value: 9),
    ColorItemModel(color: Color(0xffEEEEEE), value: 10),
  ];
  static List<DateItemModel> dates = [
    DateItemModel(date: "selecionar", value: 0),
    DateItemModel(date: "Segunda", value: 1),
    DateItemModel(date: "Terça", value: 2),
    DateItemModel(date: "Quarta", value: 3),
    DateItemModel(date: "Quinta", value: 4),
    DateItemModel(date: "Sexta", value: 5),
    DateItemModel(date: "Sábado", value: 6),
    DateItemModel(date: "Domingo", value: 7),
  ];
  static List<HourItemModel> hours = [
    HourItemModel(hour: "selecionar", value: 0),
    HourItemModel(hour: "00:00", value: 1),
    HourItemModel(hour: "01:00", value: 2),
    HourItemModel(hour: "02:00", value: 3),
    HourItemModel(hour: "03:00", value: 4),
    HourItemModel(hour: "04:00", value: 5),
    HourItemModel(hour: "05:00", value: 6),
    HourItemModel(hour: "06:00", value: 7),
    HourItemModel(hour: "07:00", value: 8),
    HourItemModel(hour: "08:00", value: 9),
    HourItemModel(hour: "09:00", value: 10),
    HourItemModel(hour: "10:00", value: 11),
    HourItemModel(hour: "11:00", value: 11),
    HourItemModel(hour: "12:00", value: 12),
    HourItemModel(hour: "13:00", value: 13),
    HourItemModel(hour: "14:00", value: 14),
    HourItemModel(hour: "15:00", value: 15),
    HourItemModel(hour: "16:00", value: 16),
    HourItemModel(hour: "17:00", value: 17),
    HourItemModel(hour: "18:00", value: 18),
    HourItemModel(hour: "19:00", value: 19),
    HourItemModel(hour: "20:00", value: 20),
    HourItemModel(hour: "21:00", value: 21),
    HourItemModel(hour: "22:00", value: 22),
    HourItemModel(hour: "23:00", value: 23),
    HourItemModel(hour: "24:00", value: 24),
  ];
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
