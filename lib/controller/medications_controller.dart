import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class MedicationsController extends BaseController {
  final valueRepeat = 0.obs;
  final valueDuration = 0.obs;
  final selectRepeat = 'Select days'.obs;
  final selectDuration = "Select Weeks".obs;
  final selectTimeValue = "Select Time".obs;
  final timeIndex = 0.obs;
  final check = false.obs;

  selectCheck() {
    check.value = !check.value;
  }

  selectTime(int v) {
    timeIndex.value = v;
  }

  selectRepeatValue(int v) {
    valueRepeat.value = v;
  }

  selectDurationValue(int v) {
    valueDuration.value = v;
  }
}
