import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/screen/banner/task_widget.dart';
import 'package:weekly_planner/util/function_util.dart';

class WeeklyBanner extends StatefulWidget {
  @override
  _WeeklyBannerState createState() => _WeeklyBannerState();
}

class _WeeklyBannerState extends State<WeeklyBanner> {
  @override
  void initState() {
    FunctionUtil.listTasksOfDay(Mock.tasks);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            StickyHeader(
              header: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: getDaysOfWeek()),
              content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: columnDayOfWeek(context)),
            )
          ],
        ),
      ),
    );
  }
}

List<Widget> tasksDayOfWeek(List<TaskModel> tasks, context) {
  List<Widget> tasOfDay = <Widget>[];
  for (int i = 0; i < tasks.length; i++) {
    tasOfDay.add(TaskWidget(taskModel: tasks[i]));
  }

  return tasOfDay;
}

List<Widget> columnDayOfWeek(BuildContext context) {
  List<Widget> colunas = [];

  for (int i = 0; i <= 6; i++) {
    colunas.add(
      Flexible(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(width: 0.5, color: Colors.grey),
                  top: BorderSide(width: 0.5, color: Colors.grey))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: FunctionUtil.listTasksDayOfWeek(context)[i].length > 0
                ? tasksDayOfWeek(
                    FunctionUtil.listTasksDayOfWeek(context)[i], context)
                : freeDay(),
          ),
        ),
      ),
    );
  }

  return colunas;
}

List<Widget> freeDay() {
  return [
    TaskWidget(
        taskModel: TaskModel(
      color: Colors.transparent,
      status: Status.todo,
      dayOfWeek: "",
      hour: DateTime.now(),
      text: "",
      id: 0,
    ))
  ];
}

List<Widget> getDaysOfWeek() {
  List<String> daysOfWeek = ["SEG", "TER", "QUA", "QUI", "SEX", "SAB", "DOM"];
  List<Widget> widgetDaysOfWeek = <Widget>[];

  for (int i = 0; i < daysOfWeek.length; i++) {
    widgetDaysOfWeek.add(dayOfWeekTitle(daysOfWeek[i]));
  }

  return widgetDaysOfWeek;
}

Widget dayOfWeekTitle(String semana) {
  return Flexible(
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
      child: Padding(
        padding: EdgeInsets.only(top: 16, bottom: 6),
        child: Text(
          semana,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ),
  );
}
