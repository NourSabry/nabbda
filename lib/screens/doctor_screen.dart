import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_doctor_screen.dart';
import 'package:nabbda/components/card_doctor_screen.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/doctor_screen_controller.dart';
import 'package:nabbda/screens/doctor_profile_screen.dart';

class DoctorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(DoctorScreenController());
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarOfDoctorScreen(),
            ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => CardOfDoctorScreen(
                      function: () {
                        print("doctor");
                        Get.to(() => DoctorProfileScreen());
                      },
                      image: "assets/images/Male.png",
                      name: "Dr Mohamed Said",
                      time: "20 min",
                      rate: "3.5",
                      description:
                          "Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Catheterization Al-Azhar University",
                      price: "250 L.E",
                      feedback: "44 ",
                      job: "senior",
                      location: "alex.egypt",
                      phoneNumber: "000123456789",
                      vote: "98% ",
                    ))
          ],
        ),
      ),
      floatingActionButton: Container(
          height: 60.0,
          width: 60.0,
          child: FittedBox(
              child: FloatingActionButton(
            backgroundColor: K.WhiteColor,
            onPressed: () {
              // showAlertDialog(context);
              Get.defaultDialog(
                  content: SizedBox(
                height: 500,
                width: 300,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Obx(() => Container(
                          height: 280,
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sort by",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFF898A8F)),
                              ),
                              RadioButtonRow(
                                label: "Consultation Fee",
                                value: 0,
                                groupValue: _controller.valueGroup1.value,
                                function: (v) {
                                  _controller.handleRadioChangeGroup1(v == null
                                      ? _controller.valueGroup1.value
                                      : v);
                                  print(_controller.valueGroup1.value);
                                },
                              ),
                              RadioButtonRow(
                                label: "The Highest rate",
                                value: 1,
                                groupValue: _controller.valueGroup1.value,
                                function: (v) {
                                  _controller.handleRadioChangeGroup1(v == null
                                      ? _controller.valueGroup1.value
                                      : v);
                                  print(_controller.valueGroup1.value);
                                },
                              ),
                              RadioButtonRow(
                                label: "The Lowest Price",
                                value: 2,
                                groupValue: _controller.valueGroup1.value,
                                function: (v) {
                                  _controller.handleRadioChangeGroup1(v == null
                                      ? _controller.valueGroup1.value
                                      : v);
                                  print(_controller.valueGroup1.value);
                                },
                              ),
                              RadioButtonRow(
                                label: "The Highest Price",
                                value: 3,
                                groupValue: _controller.valueGroup1.value,
                                function: (v) {
                                  _controller.handleRadioChangeGroup1(v == null
                                      ? _controller.valueGroup1.value
                                      : v);

                                  print(_controller.valueGroup1.value);
                                },
                              ),
                              RadioButtonRow(
                                label: "The Lowest Waiting Time",
                                value: 4,
                                groupValue: _controller.valueGroup1.value,
                                function: (v) {
                                  _controller.handleRadioChangeGroup1(v == null
                                      ? _controller.valueGroup1.value
                                      : v);
                                  print(_controller.valueGroup1.value);
                                },
                              ),
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Obx(() => Container(
                            height: 210,
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Availability",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFF898A8F)),
                                ),
                                RadioButtonRow(
                                  label: "Available Any Day",
                                  value: 0,
                                  groupValue: _controller.valueGroup2.value,
                                  function: (v) {
                                    _controller.handleRadioChangeGroup2(
                                        v == null
                                            ? _controller.valueGroup2.value
                                            : v);
                                    print(_controller.valueGroup2.value);
                                  },
                                ),
                                RadioButtonRow(
                                  label: "Available Today",
                                  value: 1,
                                  groupValue: _controller.valueGroup2.value,
                                  function: (v) {
                                    _controller.handleRadioChangeGroup2(
                                        v == null
                                            ? _controller.valueGroup2.value
                                            : v);
                                    print(_controller.valueGroup2.value);
                                  },
                                ),
                                RadioButtonRow(
                                  label: "Available in next 3 days",
                                  value: 2,
                                  groupValue: _controller.valueGroup2.value,
                                  function: (v) {
                                    _controller.handleRadioChangeGroup2(
                                        v == null
                                            ? _controller.valueGroup2.value
                                            : v);
                                    print(_controller.valueGroup2.value);
                                  },
                                ),
                                RadioButtonRow(
                                  label: "Available coming weekend",
                                  value: 3,
                                  groupValue: _controller.valueGroup2.value,
                                  function: (v) {
                                    _controller.handleRadioChangeGroup2(
                                        v == null
                                            ? _controller.valueGroup2.value
                                            : v);
                                    print(_controller.valueGroup2.value);
                                  },
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Obx(() => Container(
                            height: 80,
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "In Hospital",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFF898A8F)),
                                ),
                                RadioButtonRow(
                                  label: "In Hospital",
                                  value: 0,
                                  groupValue: _controller.valueGroup3.value,
                                  function: (v) {
                                    _controller.handleRadioChangeGroup3(
                                        v == null
                                            ? _controller.valueGroup3.value
                                            : v);
                                    print(_controller.valueGroup3.value);
                                  },
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Obx(() => Container(
                              height: 210,
                              width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Doctor Title",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF898A8F)),
                                  ),
                                  RadioButtonRow(
                                    label: "Junior",
                                    value: 0,
                                    groupValue: _controller.valueGroup4.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup4(
                                          v == null
                                              ? _controller.valueGroup4.value
                                              : v);
                                      print(_controller.valueGroup4.value);
                                    },
                                  ),
                                  RadioButtonRow(
                                    label: "Senior",
                                    value: 1,
                                    groupValue: _controller.valueGroup4.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup4(
                                          v == null
                                              ? _controller.valueGroup4.value
                                              : v);
                                      print(_controller.valueGroup4.value);                                    },
                                  ),
                                  RadioButtonRow(
                                    label: "Specialist",
                                    value: 2,
                                    groupValue: _controller.valueGroup4.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup4(
                                          v == null
                                              ? _controller.valueGroup4.value
                                              : v);
                                      print(_controller.valueGroup4.value);                                    },
                                  ),
                                  RadioButtonRow(
                                    label: "Expert",
                                    value: 3,
                                    groupValue: _controller.valueGroup4.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup4(
                                          v == null
                                              ? _controller.valueGroup4.value
                                              : v);
                                      print(_controller.valueGroup4.value);                                    },
                                  ),
                                ],
                              ),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Obx(() => Container(
                              height: 210,
                              width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RadioButtonRow(
                                    label: "Free",
                                    value: 0,
                                    groupValue: _controller.valueGroup5.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup5(
                                          v == null
                                              ? _controller.valueGroup5.value
                                              : v);
                                      print(_controller.valueGroup5.value);                                    },
                                  ),
                                  RadioButtonRow(
                                    label: "1-200",
                                    value: 1,
                                    groupValue: _controller.valueGroup5.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup5(
                                          v == null
                                              ? _controller.valueGroup5.value
                                              : v);
                                      print(_controller.valueGroup5.value);                                    },
                                  ),
                                  RadioButtonRow(
                                    label: "201-500",
                                    value: 2,
                                    groupValue: _controller.valueGroup5.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup5(
                                          v == null
                                              ? _controller.valueGroup5.value
                                              : v);
                                      print(_controller.valueGroup5.value);                                    },
                                  ),
                                  RadioButtonRow(
                                    label: "500-1000",
                                    value: 3,
                                    groupValue: _controller.valueGroup5.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup5(
                                          v == null
                                              ? _controller.valueGroup5.value
                                              : v);
                                      print(_controller.valueGroup5.value);                                    },
                                  ),
                                ],
                              ),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Obx(() => Container(
                              height: 210,
                              width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gender",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF898A8F)),
                                  ),
                                  RadioButtonRow(
                                    label: "Male",
                                    value: 0,
                                    groupValue: _controller.valueGroup6.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup6(
                                          v == null
                                              ? _controller.valueGroup6.value
                                              : v);
                                      print(_controller.valueGroup6.value);                                    },
                                  ),
                                  RadioButtonRow(
                                    label: "Female",
                                    value: 1,
                                    groupValue: _controller.valueGroup6.value,
                                    function: (v) {
                                      _controller.handleRadioChangeGroup6(
                                          v == null
                                              ? _controller.valueGroup6.value
                                              : v);
                                      print(_controller.valueGroup6.value);                                    },
                                  ),
                                ],
                              ),
                            ))),
                  ]),
                ),
              ));
            },
            child: Icon(
              Icons.filter_alt_outlined,
              size: 30,
              color: K.mainColor,
            ),
          ))),
    );
  }
}
