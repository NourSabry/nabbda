import 'package:flutter/material.dart';
import 'package:nabbda/Controller/AppSettingController.dart';
import 'package:nabbda/NavigationBarScreens/Profile/ChangePassword.dart';
import 'package:nabbda/NavigationBarScreens/Profile/Logout.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/ListTile.dart';
import 'package:nabbda/components/OurCustomerDivider.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:get/get.dart';

class AppSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(AppSettingController());

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
        Title: "App Settings",
        myIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
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
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose Language",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() => RadioButtonRow(
                              label: "English",
                              value: 0,
                              groupValue: _controller.value.value,
                              function: (v) {
                                _controller.handleRadioChange(v);
                              },
                            )),
                        SizedBox(width: 50),
                        Obx(() => RadioButtonRow(
                              label: "Arabic",
                              value: 1,
                              groupValue: _controller.value.value,
                              function: (v) {
                                _controller.handleRadioChange(v);
                              },
                            )),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                      "More :",
                      style: TextStyle(
                          color: Color(0xFF6E78F7),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    OurlistTile(
                      tileName: "About us",
                      lead: Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF6E78F7), size: 20),
                    ),
                    CustomDivider(),
                    OurlistTile(
                      tileName: "Terms and conditions ",
                      lead: Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF6E78F7), size: 20),
                    ),
                    CustomDivider(),
                    OurlistTile(
                      tileName: "Privacy Policy",
                      lead: Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF6E78F7), size: 20),
                    ),
                    CustomDivider(),
                    OurlistTile(
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangePassword()));
                      },
                      tileName: "Change Password",
                      lead: Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF6E78F7), size: 20),
                    ),
                    CustomDivider(),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () => showDialog<String>(
                          barrierColor: Color(0xFF707070),
                          context: context,
                          builder: (BuildContext context) => Logout()),
                      child: Text(
                        "Logout",
                        style: TextStyle(
                            color: Color(0xFFFF3737),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
