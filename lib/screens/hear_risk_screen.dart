import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/heart_risk_controller.dart';

class HeartRiskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(HeartRiskController());
    return Scaffold(
      body: Stack(
        children: [
          AppbarWithLabelAndIcon(
            label: 'Heart Risk',
            function: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: K.WhiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageProfile(
                        image: "assets/images/Male.png",
                      ),
                      ImageProfile(
                        image: "assets/images/Female.png",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Obx(() => RadioButtonRow(
                            label: "Male",
                            function: (v) {
                              _controller.handleRadioButtonFunction(v);
                            },
                            groupValue: _controller.value.value,
                            value: 0,
                          )),
                      Obx(() => RadioButtonRow(
                            label: "Male",
                            value: 1,
                            groupValue: _controller.value.value,
                            function: (v) {
                              _controller.handleRadioButtonFunction(v);
                            },
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("   Age"),
                      Obx(() => Slider(
                          value: _controller.valueAge.value,
                          activeColor: K.mainColor,
                          max: 120,
                          inactiveColor: Color(0xFF85D4F1),
                          onChanged: (v) {
                            _controller.handleAgeSlider(v);
                          })),
                      Row(
                        children: [
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF85D4F1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Obx(() => Text(
                                      _controller.valueAge.toInt().toString(),
                                      style: TextStyle(fontSize: 12),
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Text("Years"),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Height"),
                      Obx(() => Slider(
                          value: _controller.valueHeight.value,
                          activeColor: K.mainColor,
                          max: 200,
                          inactiveColor: Color(0xFF85D4F1),
                          onChanged: (v) {
                            _controller.valueHeight(v);
                          })),
                      Row(
                        children: [
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF85D4F1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Obx(() => Text(
                                      _controller.valueHeight
                                          .toInt()
                                          .toString(),
                                      style: TextStyle(fontSize: 12),
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Height"),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Weight"),
                      Obx(() => Slider(
                          value: _controller.valueWeight.value,
                          activeColor: K.mainColor,
                          max: 120,
                          inactiveColor: Color(0xFF85D4F1),
                          onChanged: (v) {
                            _controller.valueWeight(v);
                          })),
                      Row(
                        children: [
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF85D4F1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Obx(() => Text(
                                      _controller.valueWeight
                                          .toInt()
                                          .toString(),
                                      style: TextStyle(fontSize: 12),
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Text("Weight"),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: RegisterButton(
                      function: () {},
                      label: "Start Test",
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
