import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class CalculateBmiController extends BaseController {
  final value = 0.0.obs;

  handleSlider(double v) {
    value.value = v;
  }
}
