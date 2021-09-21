import 'package:get/get.dart';
import 'package:weekly_planner/data/list_note_data.dart';
import 'package:weekly_planner/model/task_model.dart';

class ListNoteController extends GetxController {
  final tasks = <TaskModel>[].obs;
  final mondayList = <TaskModel>[].obs;
  final tuesdayList = <TaskModel>[].obs;
  final wednesdayList = <TaskModel>[].obs;
  final thursdayList = <TaskModel>[].obs;
  final fridayList = <TaskModel>[].obs;
  final saturdayList = <TaskModel>[].obs;
  final sundayList = <TaskModel>[].obs;
  final listNoteData = ListNoteData();
  final taskModel = TaskModel();

  @override
  void onInit() {
    super.onInit();
    listNote();
  }

  Future<List<TaskModel>> listNote() async {
    clearData();
    final response = await listNoteData.listNotes();

    for (int i = 0; i < response.length; i++)
      tasks.add(taskModel.fromDocument(response[i]));

    organizeListDayOfWeek(tasks);

    return tasks;
  }

  clearData() {
    fridayList.clear();
    saturdayList.clear();
    sundayList.clear();
    mondayList.clear();
    tuesdayList.clear();
    wednesdayList.clear();
    thursdayList.clear();
    tasks.clear();
  }

  void organizeListDayOfWeek(List<TaskModel> generalList) {
    String formattedName;
    for (TaskModel task in generalList) {
      formattedName = task.dayOfWeek?.toUpperCase() ?? "";
      if (formattedName == "SEGUNDA")
        mondayList.add(task);
      else if (formattedName == "TERÇA")
        tuesdayList.add(task);
      else if (formattedName == "QUARTA")
        wednesdayList.add(task);
      else if (formattedName == "QUINTA")
        thursdayList.add(task);
      else if (formattedName == "SEXTA")
        fridayList.add(task);
      else if (formattedName == "SÁBADO")
        saturdayList.add(task);
      else if (formattedName == "DOMINGO") sundayList.add(task);
    }
  }
}
