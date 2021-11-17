import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/diabetes_risk_controller.dart';
import 'package:nabbda/screens/diabetes_risk_calculate_screen.dart';

class DiabetesTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(DiabetesTestController());

    return Scaffold(
        body: SingleChildScrollView(
            child: Theme(
                data: ThemeData(unselectedWidgetColor: K.mainColor),
                child: Stack(children: [
                  AppbarWithLabelAndIcon(
                    function: () {
                      Get.back();
                    },
                    label: "Diabetes Risk",
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 130, left: 10, right: 10),
                    child: Material(
                      color: K.WhiteColor,
                      borderRadius: BorderRadius.circular(15),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Age:",
                              style: Style.textStyleBmiScreen,
                            ),
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
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                                Obx(() => RadioButtonRow(
                                      label: "55 - 64 Years",
                                      value: 3,
                                      groupValue: _controller.value.value,
                                      function: (v) {
                                        _controller.handleRadioChange(v);
                                      },
                                    )),
                              ],
                            ),
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
                            SizedBox(height: 10),
                            Text(
                              "Are you:",
                              style: Style.textStyleBmiScreen,
                            ),
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
                            Text(
                              "Do you have any family members,whether they are a father, mother, brother,sister or child with type 1 or 2 diabetes?:",
                              style: Style.textStyleBmiScreen,
                            ),
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
                            Text(
                              "Have you had high blood glucose (sugar) for example, during a medical exam, during an illness, or during pregnancy?:",
                              style: Style.textStyleBmiScreen,
                            ),
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
                            Text(
                              "Do you have high blood pressure, or have your doctor previously prescribed medicines to treat high blood pressure?",
                              style: Style.textStyleBmiScreen,
                            ),
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
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: RegisterButton(
                                label: "Next",
                                function: () {
                                  Get.to(() => DiabetesCalculate());
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
