import 'package:nabbda/controller/base_controller.dart';
import 'package:custom_timer/custom_timer.dart';

class EnterCodeController extends BaseController {
  final CustomTimerController controller = new CustomTimerController();

  startTimer() {
    controller.start();
  }
}
