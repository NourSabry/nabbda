import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/button_share_alert.dart';

class Utility {
  static showAlertSuccess(BuildContext context) {
    Get.defaultDialog(
      title: "",
      content: Builder(builder: (context) {
        return Container(
            width: 500,
            height: 240,
            child: Column(
              children: [
                SvgPicture.asset("assets/images/success.svg"),
                SizedBox(height: 8),
                Text("Changed successfully!",
                    style: TextStyle(
                      color: Color(0xFF6E78F7),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(height: 10),
                Text(
                  "Password has been changed, return to login and try login again",
                  style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Go to login",
                    style: TextStyle(color: Color(0xFF6E78F7), fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(242, 54),
                    side: BorderSide(width: 1, color: Color(0xFF6E78F7)),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    primary: Colors.white,
                    elevation: 0.0,
                  ),
                ),
              ],
            ));
      }),
    );
  }

  static showAlertLogout(BuildContext context) {
    Get.defaultDialog(
      title: '',
      content: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          width: 400,
          height: 260,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text("Ahmed Abbas",
                  style: TextStyle(
                      color: Color(0xFF3B3C55),
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 30),
              Text("Are you sure you want to log out from PMR?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 14)),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: ButtonShareAlert(
                    function: () {
                      Get.back();
                    },
                    label: "Cancel",
                  )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: RegisterButton(
                      function: () {},
                      label: "Log out",
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
