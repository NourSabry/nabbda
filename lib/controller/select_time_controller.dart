import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class SelectTimeController extends BaseController {
  final check = false.obs;
  final value = 'For Myself'.obs;

  MySelfFunction() {
    check.value = false;
    value.value = "For Myself";
  }

  OtherSelfFunction() {
    check.value = true;
    value.value = "For Other";
  }
}
