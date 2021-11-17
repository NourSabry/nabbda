import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/diabetes_risk_calculate_controller.dart';
import 'package:nabbda/screens/diabetes_risk_results_screen.dart';

class DiabetesCalculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(DiabetesCalculateController());

    return Scaffold(
        body: SingleChildScrollView(
      child:Theme(
        data: ThemeData(
        unselectedWidgetColor: K.mainColor
    ),
    child: Stack(children: [
        AppbarWithLabelAndIcon(
          function: () {
            Get.back();
          },
          label: "Diabetes Risk",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
          child: Material(
              borderRadius: BorderRadius.circular(15),
              color: K.WhiteColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Do you smoke cigarettes or any other tobacco products on a daily basis?:",
                      style: Style.textStyleBmiScreen,
                    ),
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
                    Text(
                      "How often do you eat vegetables or fruits?",
                      style: Style.textStyleBmiScreen,
                    ),
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
                    Text(
                      "Do you do at least 2.5 hours of physical activity per week (like, 30 minutes a day, 5 or more days a week)?",
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
                      "What is your waist size?",
                      style: Style.textStyleBmiScreen,
                    ),
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
                    SizedBox(height: 20),
                    Center(
                      child: RegisterButton(
                        label: "Calculate",
                        function: () {
                          Get.to(() => DiabetesResult());
                        },
                      ),
                    )
                  ],
                ),
              )),
        )
      ]),
      )));
  }
}
