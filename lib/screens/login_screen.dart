import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nabbda/screens/forget_password_screen.dart';
import 'package:nabbda/screens/register_screen.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/text_field.dart';
import 'package:nabbda/constants.dart';

class LoginScreen extends StatelessWidget {
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Login",
                          style: TextStyle(
                              color: CustomizedColors.blackk,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("Hello, you've been missed!",
                            style: TextStyle(
                                color: CustomizedColors.greyy, fontSize: 14)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFieldInput(
                          function: (v) {},
                          hint: "Email",
                          icon: Icon(Icons.email,
                              color: Color(0xFFBDBDBD), size: 20),
                        ),
                      ),
                      TextFieldInput(
                        function: (v) {},
                        hint: "login",
                        icon: Icon(Icons.lock,
                            color: Color(0xFFBDBDBD), size: 20),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => ForgetPasswordScreen());
                          },
                          child: Text("Forgot Password?",
                              style: TextStyle(
                                  color: Color(0xFFBDBDBD), fontSize: 14)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: RegisterButton(
                          label: "Login",
                          function: () {},
                        ),
                      ),
                      Text("Or use one of your social profiles:",
                          style: TextStyle(
                              color: CustomizedColors.greyy, fontSize: 14)),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: FaIcon(FontAwesomeIcons.facebook,
                                  size: 25, color: CustomizedColors.fac),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: SvgPicture.asset(
                                "assets/images/goo.svg",
                                height: 25,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text.rich(
                          TextSpan(
                              text: "Don't have account? ",
                              style: TextStyle(
                                  fontSize: 14, color: CustomizedColors.txtFT),
                              children: [
                                TextSpan(
                                    text: "Register",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(RegisterScreen());
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
