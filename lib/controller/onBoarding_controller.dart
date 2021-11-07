import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/page_view.dart';
import 'package:nabbda/controller/base_controller.dart';

class WelcomeScreenController extends BaseController {
  final boardController = PageController();
  final isLast = false.obs;
  final isFirst = true.obs;
  final List<BoardingModel> labels = [
    BoardingModel(
        label: "Track Your Health\nReports With Us", image: "assets/images/onBoarding1.svg"),
    BoardingModel(
        label: "Get Reminders For Your\nMedications ", image: "assets/images/onBoarding4.svg"),
    BoardingModel(
        label: "Share Your Reports\nWith Your Doctors", image: "assets/images/onBoarding3.svg"),
    BoardingModel(
        label: "Book an appointment with a\nright doctor", image: "assets/images/onBoarding2.svg"),
  ];

  isLastFunction(int index) {
    if (index == labels.length - 1) {
      isLast.value = true;
    } else {
      isLast.value = false;
    }
  }

  isFirstFunction(int index) {
    if (index == labels.length - 4) {
      isFirst.value = true;
    } else {
      isFirst.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    isFirstFunction(0);
  }
}
