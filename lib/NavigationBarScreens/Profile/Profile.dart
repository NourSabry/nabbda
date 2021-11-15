import 'package:flutter/material.dart';
import 'package:nabbda/Controller/ProfileController.dart';
import 'package:nabbda/NavigationBarScreens/Profile/changeProfilePicture.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NewTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/radio_button_row.dart';

class Profile extends StatefulWidget {
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ProfileController());

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
        myIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
        Title: "Profile ",
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
              widget: Theme(
                data: ThemeData(unselectedWidgetColor: Color(0xFF0880AE)),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/avatar.png"),
                            radius: 40,
                          ),
                        ),
                        Center(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChangeProfilePicture()),
                                  );
                                },
                                icon: Icon(Icons.edit,
                                    color: Color(0xFF6E78F7)))),
                        Text(
                          "Personal Information",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        NewTextField(
                          hint: "Info@gmail.com",
                          label: "Email",
                        ),
                        NewTextField(
                          hint: "Ahmed Abbas",
                          label: "Name",
                        ),
                        NewTextField(
                          hint: "01022355169",
                          label: "Phone number",
                        ),
                        NewTextField(
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
            ),
          ),
        ],
      ),
    );
  }
}
