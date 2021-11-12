import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/NewPassword.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              label: "Back",
              function: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/lock.svg",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 10),
                        child: Text("Forgot Password",
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xFF2D2D2D),
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Text(
                        "Enter your mobile number to reset your password",
                        style: TextStyle(
                            color: Color(0xFF9E9E9E),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 25),
                        child: TextFieldInput(
                          function: (v) {},
                          icon: Icon(
                            Icons.phone,
                            color: Color(0xFFBDBDBD),
                          ),
                          hint: "Mobile Number",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: RegisterButton(
                          function: () {
                            Get.to(()=>NewPasswordScreen());
                          },
                          label: "Send",
                        ),
                      ),
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
