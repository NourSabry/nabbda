import 'package:flutter/material.dart';
import 'package:nabbda/screens/changeProfilePicture.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/components/text_field_profile.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/profile_controller.dart';

class ProfilePersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ProfileController());

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Get.back();
              },
              label: "Profile",
            ),
            Padding(
              padding: EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Personal Information",
                        style: TextStyle(
                            color: Color(0xFF6E78F7),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      ProfileTextField(
                        hint: "Info@gmail.com",
                        label: "Email",
                      ),
                      ProfileTextField(
                        hint: "Ahmed Abbas",
                        label: "Name",
                      ),
                      ProfileTextField(
                        hint: "01022355169",
                        label: "Phone number",
                      ),
                      ProfileTextField(
                        hint: "06/01/1990",
                        label: "Date of Birth",
                      ),
                      SizedBox(height: 20),
                      Text("Choose Gender",
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
                      SizedBox(height: 20),
                      Text("Do you make Cardiac catheterization?",
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
                                groupValue: _controller.value2.value,
                                function: (v2) {
                                  _controller.handleRadio2Change(v2);
                                },
                              )),
                          SizedBox(width: 50),
                          Obx(
                            () => RadioButtonRow(
                              label: "No",
                              value: 1,
                              groupValue: _controller.value2.value,
                              function: (v2) {
                                _controller.handleRadio2Change(v2);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("Do you make Open Heart surgery",
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
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      ImageProfile(image: "assets/images/avatar.png"),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChangeProfilePicture()),
                            );
                          },
                          icon: Icon(Icons.edit, color: K.mainColor)),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
