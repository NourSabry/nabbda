import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_doctor_screen.dart';
import 'package:nabbda/components/card_doctor_screen.dart';
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
                  content: Obx(() => Container(
                        height: 150,
                        child: Column(
                          children: [
                            Radio(
                              value: 0,
                              groupValue: _controller.value.value,
                              activeColor: Colors.blue,
                              onChanged: (int? v) {
                                print(_controller.value);

                                _controller.handleRadioChange(v);
                              },
                            ),
                            Radio(
                              value: 1,
                              groupValue: _controller.value.value,
                              activeColor: Colors.blue,
                              onChanged: (int? v) {
                                print(_controller.value);
                                _controller.handleRadioChange(v);
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: _controller.value.value,
                              activeColor: Colors.blue,
                              onChanged: (int? v) {
                                print(_controller.value);

                                _controller.handleRadioChange(v);
                              },
                            ),
                          ],
                        ),
                      )));
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
