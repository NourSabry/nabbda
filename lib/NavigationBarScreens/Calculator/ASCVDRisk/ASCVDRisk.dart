import 'package:flutter/material.dart';
import 'package:nabbda/Controller/ASCVDRisk.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/TextFormFieldWithUnderText.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/radio_button_row.dart';

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
      appBar: myAppBar(
        myIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
        Title: "ASCVD Risk ",
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                          SizedBox(
                            width: 50,
                          ),
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
                              groupValue: _controller.value2.value,
                              function: (v2) {
                                _controller.handleRadio2Change(v2);
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
                      Text(
                        "How long ago did patient quit smoking? ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
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
                      SizedBox(height: 30),
                      NabbdaButton(
                        Name: "Calculate",
                        function: () {},
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
