import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/text_field.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/Home.dart';
import 'package:nabbda/utility/alerts.dart';

class NewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Get.back();
              },
              label: "Back",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset(
                          "assets/images/open.png",
                        ),
                      ),
                      Text("New Password",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D2D2D),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFieldInput(
                          function: (v) {},
                          hint: "New Password",
                          icon: Icon(
                            Icons.lock,
                            color: Color(0xFFBDBDBD),
                          ),
                        ),
                      ),
                      TextFieldInput(
                        function: (v) {},
                        hint: "Confirm Password",
                        icon: Icon(
                          Icons.lock,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 50),
                        child: RegisterButton(
                          function: () {
                            Utility.showAlertSuccess(context);
                             Get.to(()=>Home());
                          },
                          label: "Change",
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
