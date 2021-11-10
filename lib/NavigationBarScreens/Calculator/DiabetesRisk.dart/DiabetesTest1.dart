import 'package:flutter/material.dart';
import 'package:nabbda/Controller/DiabetesTest1.dart';
import 'package:nabbda/NavigationBarScreens/Calculator/DiabetesRisk.dart/DiabetesTest2.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/DiabetesRiskText.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/radio_button_row.dart';

class DiabetesTest1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(DiabetesTestController());

    return Scaffold(
      appBar: myAppBar(
        Title: "Diabetes Risk",
        myIcon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 450,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DiabetesRiskText(Question: "Your Age:"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "35 years or less",
                                  value: 0,
                                  groupValue: _controller.value.value,
                                  function: (v) {
                                    _controller.handleRadioChange(v);
                                  },
                                )),
                            SizedBox(width: 5),
                            Obx(
                              () => RadioButtonRow(
                                label: "35 - 44 years",
                                value: 1,
                                groupValue: _controller.value.value,
                                function: (v) {
                                  _controller.handleRadioChange(v);
                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            Obx(
                              () => RadioButtonRow(
                                label: "45 - 54 years",
                                value: 2,
                                groupValue: _controller.value.value,
                                function: (v) {
                                  _controller.handleRadioChange(v);
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "55 - 64 Years",
                                  value: 3,
                                  groupValue: _controller.value.value,
                                  function: (v) {
                                    _controller.handleRadioChange(v);
                                  },
                                )),
                            SizedBox(width: 20),
                            Obx(
                              () => RadioButtonRow(
                                label: "65 years or more",
                                value: 4,
                                groupValue: _controller.value.value,
                                function: (v) {
                                  _controller.handleRadioChange(v);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        DiabetesRiskText(Question: "Are You:"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "Male",
                                  value: 0,
                                  groupValue: _controller.value2.value,
                                  function: (v2) {
                                    _controller.handleRadio2Change(v2);
                                  },
                                )),
                            SizedBox(width: 65),
                            Obx(
                              () => RadioButtonRow(
                                label: "Female",
                                value: 1,
                                groupValue: _controller.value2.value,
                                function: (v2) {
                                  _controller.handleRadio2Change(v2);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        DiabetesRiskText(
                            Question:
                                "Do you have any family members,whether they are a father, mother, brother,sister or child with type 1 or 2 diabetes?:"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "Yes",
                                  value: 0,
                                  groupValue: _controller.value3.value,
                                  function: (v3) {
                                    _controller.handleRadio3Change(v3);
                                  },
                                )),
                            SizedBox(width: 65),
                            Obx(
                              () => RadioButtonRow(
                                label: "No",
                                value: 1,
                                groupValue: _controller.value3.value,
                                function: (v3) {
                                  _controller.handleRadio3Change(v3);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        DiabetesRiskText(
                            Question:
                                "Have you had high blood glucose (sugar) for example, during a medical exam, during an illness, or during pregnancy?:"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "Yes",
                                  value: 0,
                                  groupValue: _controller.value4.value,
                                  function: (v4) {
                                    _controller.handleRadio4Change(v4);
                                  },
                                )),
                            SizedBox(width: 65),
                            Obx(
                              () => RadioButtonRow(
                                label: "No",
                                value: 1,
                                groupValue: _controller.value4.value,
                                function: (v4) {
                                  _controller.handleRadio4Change(v4);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        DiabetesRiskText(
                            Question:
                                "Do you have high blood pressure, or have your doctor previously prescribed medicines to treat high blood pressure?"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "Yes",
                                  value: 0,
                                  groupValue: _controller.value5.value,
                                  function: (v5) {
                                    _controller.handleRadio5Change(v5);
                                  },
                                )),
                            SizedBox(width: 65),
                            Obx(
                              () => RadioButtonRow(
                                label: "No",
                                value: 1,
                                groupValue: _controller.value5.value,
                                function: (v5) {
                                  _controller.handleRadio5Change(v5);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  NabbdaButton(
                      Name: "Next",
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiabetesTest2()));
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
