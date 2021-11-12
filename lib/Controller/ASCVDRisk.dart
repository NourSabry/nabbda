import 'package:get/get.dart';
import 'package:nabbda/Controller/BaseController.dart';

class ASCVDRiskController extends BaseController {
  final value = 0.obs;
  final value2 = 0.obs;
  final value3 = 0.obs;
  final value4 = 0.obs;
  final value5 = 0.obs;
  final value6 = 0.obs;
  final value7 = 0.obs;

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
