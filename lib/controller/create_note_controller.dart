import 'package:get/get.dart';
import 'package:weekly_planner/model/create_note/color_item_model.dart';
import 'package:weekly_planner/model/create_note/date_item_model.dart';
import 'package:weekly_planner/model/create_note/hour_item_model.dart';
import 'package:weekly_planner/model/mock.dart';
import 'package:weekly_planner/model/task_model.dart';

class CreateNoteController extends GetxController {
  Rx<ColorItemModel> colorItemModel =
      ColorItemModel(color: Mock.colors[0].color, value: 0).obs;
  Rx<DateItemModel> dateItemModel =
      DateItemModel(date: "segunda", value: 0).obs;
  Rx<HourItemModel> hourItemModel = HourItemModel(hour: "00:00", value: 0).obs;
  var listTaskModel = <TaskModel>[].obs;
  Rx<String> textNote = "undefined".obs;
  Rx<int> indice = 0.obs;

  Rx<Status> status = Status.todo.obs;

  addNote() {
    listTaskModel.add(TaskModel(
      color: colorItemModel.value.color,
      dayOfWeek: dateItemModel.value.date,
      hour: hourItemModel.value.hour,
      status: status.value,
      text: textNote.value,
    ));
  }
}
