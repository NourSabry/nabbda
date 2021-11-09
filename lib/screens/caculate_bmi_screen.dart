import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/text_table_row.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/calculate_bmi_controller.dart';

class CalculateBmiScreen extends StatelessWidget {
  final int valueLose = 2;
  final double bmiValue = 25.78;

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(CalculateBmiController());
    return Scaffold(
      body: Stack(
        children: [
          AppbarWithLabelAndIcon(
            function: () {
              Navigator.pop(context);
            },
            label: "Body Mass Index (BMI)",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
            child: Material(
              color: K.WhiteColor,
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    AutoSizeText(
                      "Your BMI is ${bmiValue.toString()} (high weight)",
                      style: Style.textStyleBmiScreen,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: AutoSizeText(
                        "You need to lose ${valueLose.toString()} kg in order to reach a\nnormal weight",
                        style: Style.textStyleBmiText,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: BalloonSlider(
                          value: _controller.value.value,
                          ropeLength: 40,
                          showRope: true,
                          onChanged: (val) {
                            _controller.handleSlider(val);
                          },
                          color: K.mainColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RegisterButton(
                        label: "Calculate again",
                        function: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Personal measurement results:",
                          style: Style.textStyleCalculatorBmiText,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Table(
                          border: TableBorder.all(
                              width: 1.0,
                              color: K.grayColor.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          children: [
                            TableRow(children: [
                              TextTableRow(
                                label: "Current BMI is",
                              ),
                              TextTableRow(
                                label: "25.78 kg / m2",
                              ),
                            ]),
                            TableRow(children: [
                              TextTableRow(
                                label: "The average healthy BMI",
                              ),
                              TextTableRow(
                                label: "18.5 kg/m2 - 25 kg/m2",
                              ),
                            ]),
                            TableRow(children: [
                              TextTableRow(
                                label: "A healthy situation is",
                              ),
                              TextTableRow(
                                label: "An overweight",
                              ),
                            ]),
                            TableRow(children: [
                              TextTableRow(
                                label:
                                    "Your weight should\npreferably be between",
                              ),
                              TextTableRow(
                                label: "47.36kg - 64kg",
                              ),
                            ]),
                            TableRow(children: [
                              TextTableRow(
                                label: "The weight index is",
                              ),
                              TextTableRow(
                                label: "16.11 kg / m3",
                              ),
                            ]),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
