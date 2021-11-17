import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/components/text_field_ascvd_risk.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/ascvd_risk_controller.dart';
import 'package:nabbda/screens/ascvd_risk_calculator.dart';

class ASCVDRisk extends StatefulWidget {
  const ASCVDRisk({Key? key}) : super(key: key);

  @override
  State<ASCVDRisk> createState() => _ASCVDRisk();
}

class _ASCVDRisk extends State<ASCVDRisk> {
  final _controller = Get.put(ASCVDRiskController());

  var Age;

  var DiastolicBloodPressure;
  var SystolicBloodPressure;
  var Cholesterol;
  var HDLCholesterol;
  var LDLCholesterol;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5F5F5),
      body: SingleChildScrollView(
          child: Theme(
        data: ThemeData(unselectedWidgetColor: K.mainColor),
        child: Stack(children: [
          AppbarWithLabelAndIcon(
            function: () {
              Get.back();
            },
            label: "ASCVD Risk ",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30 , vertical : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormFieldWithUnderText(
                      text: "Age must be between 20-79",
                      label: "Current Age:",
                      function: (value) {
                        Age = value;
                      },
                    ),
                    SizedBox(height: 30),
                    Text("Sex",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() => RadioButtonRow(
                              label: "Male",
                              value: 0,
                              groupValue: _controller.value.value,
                              function: (v) {
                                _controller.handleRadioChange(v);
                              },
                            )),
                        SizedBox(width: 50),
                        Obx(
                          () => RadioButtonRow(
                            label: "Female",
                            value: 1,
                            groupValue: _controller.value.value,
                            function: (v) {
                              _controller.handleRadioChange(v);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text("Race",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() => RadioButtonRow(
                              label: "White",
                              value: 0,
                              groupValue: _controller.value2.value,
                              function: (v2) {
                                _controller.handleRadio2Change(v2);
                              },
                            )),
                        Obx(
                          () => RadioButtonRow(
                            label: "African American",
                            value: 1,
                            groupValue: _controller.value2.value,
                            function: (v2) {
                              _controller.handleRadio2Change(v2);
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
                            label: "Other",
                            value: 2,
                            groupValue: _controller.value4.value,
                            function: (v4) {
                              _controller.handleRadio4Change(v4);
                            },
                          ),
                        ),
                      ],
                    ),
                    TextFormFieldWithUnderText(
                      text: "Value must be between 90-200",
                      label: "Systolic Blood Pressure (mm Hg):",
                      function: (value) {
                        SystolicBloodPressure = value;
                      },
                    ),
                    TextFormFieldWithUnderText(
                      text: "Value must be between 60-130",
                      label: "Diastolic Blood Pressure (mm Hg):",
                      function: (value) {
                        DiastolicBloodPressure = value;
                      },
                    ),
                    TextFormFieldWithUnderText(
                      text: "Value must be between 130 - 320",
                      label: "Total Cholesterol (mg/dL):",
                      function: (value) {
                        Cholesterol = value;
                      },
                    ),
                    TextFormFieldWithUnderText(
                      text: "Value must be between 20 - 100",
                      label: "HDL Cholesterol (mg/dL):",
                      function: (value) {
                        HDLCholesterol = value;
                      },
                    ),
                    TextFormFieldWithUnderText(
                      label: "LDL Cholesterol (mg/dL):",
                      text: "Value must be between 30-300",
                      function: (value) {
                        LDLCholesterol = value;
                      },
                    ),
                    SizedBox(height: 30),
                    Text("History of Diabetes? ",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
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
                        SizedBox(width: 50),
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
                    SizedBox(height: 30),
                    Text("Smoker? ",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() => RadioButtonRow(
                              label: "Current",
                              value: 0,
                              groupValue: _controller.value4.value,
                              function: (v4) {
                                _controller.handleRadio4Change(v4);
                              },
                            )),
                        SizedBox(width: 20),
                        Obx(
                          () => RadioButtonRow(
                            label: "Current",
                            value: 1,
                            groupValue: _controller.value4.value,
                            function: (v4) {
                              _controller.handleRadio4Change(v4);
                            },
                          ),
                        ),
                        SizedBox(width: 20),
                        Obx(
                          () => RadioButtonRow(
                            label: "Never",
                            value: 2,
                            groupValue: _controller.value4.value,
                            function: (v4) {
                              _controller.handleRadio4Change(v4);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Text(
                        "How long ago did patient quit smoking? ",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          Get.defaultDialog(
                              title: "",
                              content: SizedBox(
                                height: 250,
                                width: 250,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: _controller.labels.length,
                                    itemBuilder: (ctx, index) => Obx(() =>
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    _controller
                                                        .selectIndex(index);
                                                    _controller.label.value =
                                                        _controller.labels[index];
                                                    Get.back();
                                                  },
                                                  child: Text(
                                                    _controller.labels[index],
                                                    style: TextStyle(
                                                        backgroundColor:
                                                            _controller.listIndex
                                                                        .value ==
                                                                    index
                                                                ? Color(
                                                                    0xFFA5AAE7)
                                                                : Colors
                                                                    .transparent,
                                                        color: _controller
                                                                    .listIndex
                                                                    .value ==
                                                                index
                                                            ? K.mainColor
                                                            : K.grayColor),
                                                  )),
                                              _controller.listIndex.value == index
                                                  ? Icon(
                                                      Icons.check,
                                                      color: K.mainColor,
                                                      size: 30,
                                                    )
                                                  : Container()
                                            ],
                                          ),
                                        ))),
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFFE4E4E4),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => Text(_controller.label.value,
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF3B3C55)))),
                              Icon(
                                Icons.arrow_drop_down,
                                color: K.mainColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text("On Hypertension Treatment? ",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
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
                        SizedBox(width: 50),
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
                    SizedBox(height: 30),
                    Text("On a Statin? ",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() => RadioButtonRow(
                              label: "Yes",
                              value: 0,
                              groupValue: _controller.value6.value,
                              function: (v6) {
                                _controller.handleRadio6Change(v6);
                              },
                            )),
                        SizedBox(width: 50),
                        Obx(
                          () => RadioButtonRow(
                            label: "No",
                            value: 1,
                            groupValue: _controller.value6.value,
                            function: (v6) {
                              _controller.handleRadio6Change(v6);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text("On Aspirin Therapy?",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() => RadioButtonRow(
                              label: "Yes",
                              value: 0,
                              groupValue: _controller.value7.value,
                              function: (v7) {
                                _controller.handleRadio7Change(v7);
                              },
                            )),
                        SizedBox(width: 50),
                        Obx(
                          () => RadioButtonRow(
                            label: "No",
                            value: 1,
                            groupValue: _controller.value7.value,
                            function: (v7) {
                              _controller.handleRadio7Change(v7);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: RegisterButton(
                        function: () {
                          Get.to(() => AscvdCalculatorScreen());
                        },
                        label: "Calculate",
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
