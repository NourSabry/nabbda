import 'package:nabbda/controller/base_controller.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:get/get.dart';
class EnterCodeController extends BaseController {
  final CustomTimerController controller = new CustomTimerController();
final label="".obs;
  startTimer() {
    controller.start();
  }


}
