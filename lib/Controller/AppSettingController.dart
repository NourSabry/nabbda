import 'package:get/get.dart';
import 'package:nabbda/Controller/BaseController.dart';

class AppSettingController extends BaseController {
  final value = 0.obs;

  handleRadioChange(int? v) {
    value.value = v!;
  }
}
