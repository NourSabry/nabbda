import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class AppSettingController extends BaseController {
  final value = 0.obs;

  handleValueFun(int v) {
    value.value = v;
  }
}
