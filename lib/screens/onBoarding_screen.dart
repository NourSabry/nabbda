import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/LoginScreens/LoginScreen.dart';
import 'package:nabbda/components/page_view.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/onBoarding_controller.dart';
import 'package:nabbda/screens/Home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  final controller = Get.put(WelcomeScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller.boardController,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      pageViewScreen(controller.labels[index]),
                  itemCount: controller.labels.length,
                  onPageChanged: (int index) {
                    controller.isFirstFunction(index);
                    controller.isLastFunction(index);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => controller.isFirst.value
                      ? GestureDetector(
                          onTap: () {
                            if (controller.isFirst.value) {
                              Get.offAll(LoginScreen());
                            }
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(fontSize: 18, color: K.mainColor),
                          ))
                      : IconButton(
                          onPressed: () {
                            controller.boardController.previousPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.fastLinearToSlowEaseIn);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: K.mainColor,
                          ))),
                  SmoothPageIndicator(
                      controller: controller.boardController, // PageController
                      count: controller.labels.length,
                      effect: ScrollingDotsEffect(
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        activeDotColor: K.mainColor,
                        dotWidth: 10,
                        spacing: 5,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                  Obx(() => controller.isLast.value
                      ? GestureDetector(
                          onTap: () {
                            if (controller.isLast.value) {
                              Get.offAll(Home());
                            }
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(fontSize: 18, color: K.mainColor),
                          ))
                      : IconButton(
                          onPressed: () {
                            controller.boardController.nextPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.fastLinearToSlowEaseIn);
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: K.mainColor,
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
