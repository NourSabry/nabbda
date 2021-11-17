import 'package:get/get.dart';
import 'package:nabbda/controller/base_controller.dart';

class ASCVDRiskController extends BaseController {
  final value = 0.obs;
  final value2 = 0.obs;
  final value3 = 0.obs;
  final value4 = 0.obs;
  final value5 = 0.obs;
  final value6 = 0.obs;
  final value7 = 0.obs;
  final listIndex = 0.obs;
  final label = ''.obs;
  final List<String> labels = [
    'Unknown',
    "Less than 6 months ago",
    "6 months - 1.5 years ago",
    "1.5 - 2.5 years ago",
    "2.5 - 3.5 years ago",
    "3.5 - 5 years ago",
    "More than 5 years ago"
  ];

  selectIndex(int v) {
    listIndex.value = v;
  }

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

  handleRadio6Change(int? v6) {
    value6.value = v6!;
  }

  handleRadio7Change(int? v7) {
    value7.value = v7!;
  }
}
