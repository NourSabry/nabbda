import 'package:nabbda/controller/base_controller.dart';
import 'package:get/get.dart';

class HeartRiskCheckBoxController extends BaseController {
  final value = List<bool>.filled(6, false).obs;
  final List<String> labels = [
    "Heart attack or coronary bypass surgery",
    "Stroke or transient ischemic attack (TIA)",
    "Peripheral artery disease — reduced blood\nflow in arteries in your legs, arms or other areas",
    "Angioplasty or stent placement — a procedure\nto open narrowed or clogged arteries by\nplacing a small tube (stent) in an artery to\nkeep it open and prevent it from narrowing",
    "Abdominal aortic aneurysm — enlargement\nof the lower area of the major blood vessel\n(aorta) that supplies blood to the body",
    "None of the above"
  ];
}
