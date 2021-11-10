import 'package:get/get.dart';
import 'package:nabbda/Controller/BaseController.dart';

class DiabetesTestController extends BaseController {
  final value = 0.obs;
  final value2 = 0.obs;
  final value3 = 0.obs;
  final value4 = 0.obs;
  final value5 = 0.obs;

  handleRadioChange(int? v) {
    value.value = v!;
  }

  handleRadio2Change(int? v2) {
    value2.value = v2!;
  }

  handleRadio3Change(int? v3) {
    value3.value = v3!;
  }

  handleRadio4Change(int? v4) {
    value4.value = v4!;
  }

  handleRadio5Change(int? v5) {
    value5.value = v5!;
  }
}
