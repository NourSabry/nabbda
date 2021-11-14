import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class DoctorScreenController extends BaseController {
  final valueGroup1 = 0.obs;
  final valueGroup2 = 0.obs;
  final valueGroup3 = 0.obs;
  final valueGroup4 = 0.obs;
  final valueGroup5 = 0.obs;
  final valueGroup6 = 0.obs;

  handleRadioChangeGroup1(int v) {
    valueGroup1.value = v;
  }

  handleRadioChangeGroup2(int v) {
    valueGroup2.value = v;
  }

  handleRadioChangeGroup3(int v) {
    valueGroup3.value = v;
  }

  handleRadioChangeGroup4(int v) {
    valueGroup4.value = v;
  }

  handleRadioChangeGroup5(int v) {
    valueGroup5.value = v;
  }

  handleRadioChangeGroup6(int v) {
    valueGroup6.value = v;
  }
}
