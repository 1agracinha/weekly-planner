import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:weekly_planner/controller/list_note_controller.dart';
import 'package:weekly_planner/model/task_model.dart';
import 'package:weekly_planner/screen/banner/task_widget.dart';
import 'package:weekly_planner/theme/colors.dart';

class WeeklyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.allScroll,
      child: GetBuilder<ListNoteController>(
          builder: (listNoteController) => Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      StickyHeader(
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: listDaysOfWeek(),
                        ),
                        content: Obx(
                          () => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                dayOfWeekColumn("SEG",
                                    listNoteController.mondayList, context),
                                dayOfWeekColumn("TER",
                                    listNoteController.tuesdayList, context),
                                dayOfWeekColumn("QUA",
                                    listNoteController.wednesdayList, context),
                                dayOfWeekColumn("QUI",
                                    listNoteController.thursdayList, context),
                                dayOfWeekColumn("SEX",
                                    listNoteController.fridayList, context),
                                dayOfWeekColumn("SAB",
                                    listNoteController.saturdayList, context),
                                dayOfWeekColumn("DOM",
                                    listNoteController.sundayList, context),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              )),
    );
  }

  Widget dayOfWeekColumn(
      String title, List<TaskModel> tasksOfDay, BuildContext context) {
    return Flexible(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(width: 0.5, color: ColorUtil.mainGray),
                top: BorderSide(width: 0.5, color: ColorUtil.mainGray))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: tasksOfDay.length > 0
                ? tasksOfDay.map((task) => TaskWidget(taskModel: task)).toList()
                : freeDay(),
          ),
        ),
      ),
    );
  }

  List<Widget> freeDay() {
    return [
      TaskWidget(
          enable: false,
          taskModel: TaskModel(
            color: Colors.transparent,
            status: Status.todo,
            dayOfWeek: "",
            hour: "00:00",
            text: "",
            id: "0",
          ))
    ];
  }

  List<Widget> listDaysOfWeek() {
    List<String> daysOfWeek = ["SEG", "TER", "QUA", "QUI", "SEX", "SAB", "DOM"];
    List<Widget> widgetDaysOfWeek = <Widget>[];

    for (int i = 0; i < daysOfWeek.length; i++) {
      widgetDaysOfWeek.add(dayOfWeekTitleWidget(daysOfWeek[i]));
    }

    return widgetDaysOfWeek;
  }

  Widget dayOfWeekTitleWidget(String semana) {
    return Flexible(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(width: 0.5, color: ColorUtil.mainGray))),
        child: Padding(
          padding: EdgeInsets.only(top: 16, bottom: 6),
          child: Text(
            semana,
            style: TextStyle(color: ColorUtil.mainGray),
          ),
        ),
      ),
    );
  }
}
