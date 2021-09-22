import 'package:get/get.dart';
import 'package:weekly_planner/controller/edit_note_controller.dart';

import 'create_note_controller.dart';
import 'list_note_controller.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Get.put(CreateNoteController());
    Get.put(ListNoteController());
    Get.put(EditNoteController());
  }
}
