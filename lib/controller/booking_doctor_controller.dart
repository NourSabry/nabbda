import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class BookingDoctorController extends BaseController {
  final _indexMorning = 0.obs;
  final _indexAfterNoon = 0.obs;
  final _indexNight = 0.obs;

  int get indexMorning => _indexMorning.value;

  int get indexAfterNoon => _indexAfterNoon.value;

  int get indexNight => _indexNight.value;

  selectMorningTime(int i) {
    _indexMorning.value = i;
  }

  selectAfterNoonTime(int i) {
    _indexAfterNoon.value = i;
  }

  selectNightTime(int i) {
    _indexNight.value = i;
  }
}
