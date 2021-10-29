import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class DoctorScreenController extends BaseController {
  final value = 0.obs;

  handleRadioChange(int? v) {
    value.value = v!;


  }
}
