import 'package:get/get.dart';
import 'package:nabbda/controller/base_controller.dart';

class ProfileController extends BaseController {
  final value = 0.obs;
  final value2 = 0.obs;
  final value3 = 0.obs;

  handleRadioChange(int? v) {
    value.value = v!;
  }

  handleRadio2Change(int? v2) {
    value2.value = v2!;
  }

  handleRadio3Change(int? v3) {
    value3.value = v3!;
  }
}
