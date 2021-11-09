import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class BmrController extends BaseController {
  final value = 0.obs;
  final valueAge = 0.0.obs;
  final valueHeight = 0.0.obs;
  final valueWeight = 0.0.obs;
  final _index = 0.obs;
  final text = "Choose physical activity".obs;

  int get index => _index.value;

  selectText(int v) {
    _index.value = v;
  }

  handleRadioButtonFunction(int? v) {
    value.value = v!;
  }

  handleAgeSlider(double v) {
    valueAge.value = v;
  }

  handleHeightSlider(double v) {
    valueHeight.value = v;
  }

  handleWeightSlider(double v) {
    valueWeight.value = v;
  }
}
