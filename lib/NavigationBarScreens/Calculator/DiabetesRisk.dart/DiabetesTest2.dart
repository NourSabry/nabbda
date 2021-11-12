import 'package:flutter/material.dart';
import 'package:nabbda/Controller/DiabetesTest1.dart';
import 'package:nabbda/NavigationBarScreens/Calculator/DiabetesRisk.dart/DiabetesRiskResult.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/DiabetesRiskText.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/radio_button_row.dart';

class DiabetesTest2 extends StatelessWidget {
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
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DiabetesRiskText(
                            Question:
                                "Do you smoke cigarettes or any other tobacco products on a daily basis?:"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "Yes",
                                  value: 0,
                                  groupValue: _controller.value.value,
                                  function: (v) {
                                    _controller.handleRadioChange(v);
                                  },
                                )),
                            SizedBox(width: 65),
                            Obx(
                              () => RadioButtonRow(
                                label: "No",
                                value: 1,
                                groupValue: _controller.value.value,
                                function: (v) {
                                  _controller.handleRadioChange(v);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        DiabetesRiskText(
                            Question:
                                "How often do you eat vegetables or fruits?"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "Everyday ",
                                  value: 0,
                                  groupValue: _controller.value2.value,
                                  function: (v2) {
                                    _controller.handleRadio2Change(v2);
                                  },
                                )),
                            SizedBox(width: 35),
                            Obx(
                              () => RadioButtonRow(
                                label: "Sometimes",
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
                                "Do you do at least 2.5 hours of physical activity per week (like, 30 minutes a day, 5 or more days a week)?"),
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
                        DiabetesRiskText(Question: "What is your waist size?"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => RadioButtonRow(
                                  label: "Less than 80 cm",
                                  value: 0,
                                  groupValue: _controller.value4.value,
                                  function: (v4) {
                                    _controller.handleRadio4Change(v4);
                                  },
                                )),
                            Obx(
                              () => RadioButtonRow(
                                label: "From 80 -90 cm",
                                value: 1,
                                groupValue: _controller.value4.value,
                                function: (v4) {
                                  _controller.handleRadio4Change(v4);
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(
                              () => RadioButtonRow(
                                label: "90 cm or more",
                                value: 2,
                                groupValue: _controller.value4.value,
                                function: (v4) {
                                  _controller.handleRadio4Change(v4);
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
                    Name: "Calculate",
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiabetesResult()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
