import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/ForgetPassword.dart';
import 'package:nabbda/screens/LoginScreen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Back",
            ),
            Padding(
              padding: EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Text("Register",
                          style: TextStyle(
                              color: CustomizedColors.blackk,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("Welcome to our community",
                            style: TextStyle(
                                color: CustomizedColors.greyy, fontSize: 14)),
                      ),
                      ImageProfile(
                        image: "assets/images/Male.png",
                      ),
                      TextFieldInput(
                        hint: "full name",
                        function: (v) {},
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Mobile Number",
                        function: (v) {},
                        icon: Icon(
                          Icons.phone,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Gender",
                        function: (v) {},
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Date of Birth",
                        function: (v) {},
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Email",
                        function: (v) {},
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Password",
                        function: (v) {},
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: RegisterButton(
                          function: () {
                            Get.to(()=>ForgetPasswordScreen());
                          },
                          label: "Register",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text.rich(
                          TextSpan(
                              text: "Already have account? ",
                              style: TextStyle(
                                  fontSize: 14, color: CustomizedColors.txtFT),
                              children: [
                                TextSpan(
                                    text: "Login",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(() => LoginScreen());
                                      },
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF6E78F7),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold))
                              ]),
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
