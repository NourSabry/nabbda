import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabbda/ForgetPasswordsScreens/ForgetPassword.dart';
import 'package:nabbda/LoginScreens/Register.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/OurTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        Title: "Back",
        myIcon: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
              left: 0, right: 0, top: 0, bottom: 450, child: PurpleContainer()),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Text("Login",
                        style: TextStyle(
                            color: CustomizedColors.blackk,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: size.height * 0.008),
                    Text("Hello, you've been missed!",
                        style: TextStyle(
                            color: CustomizedColors.greyy, fontSize: 14)),
                    SizedBox(height: size.height * 0.05),
                    OurTextField(
                      hint: "Email",
                      prefix: Icon(Icons.mail_outline,
                          color: Color(0xFFBDBDBD), size: 20),
                    ),
                    SizedBox(height: size.height * 0.03),
                    OurTextField(
                      hint: "Password",
                      prefix:
                          Icon(Icons.lock, color: Color(0xFFBDBDBD), size: 20),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPassword()));
                        },
                        child: Text("Forgot Password?",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD), fontSize: 14)),
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),
                    Column(
                      children: [
                        NabbdaButton(Name: "Login", function: () {}),
                        SizedBox(height: size.height * 0.04),
                        Text("Or use one of your social profiles:",
                            style: TextStyle(
                                color: CustomizedColors.greyy, fontSize: 14)),
                        SizedBox(height: size.height * 0.05),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.facebook,
                                size: size.height * 0.042,
                                color: CustomizedColors.fac),
                            SizedBox(width: size.width * 0.1),
                            SvgPicture.asset("assets/images/goo.svg",
                                height: size.height * 0.037)
                          ],
                        ),
                        SizedBox(height: size.height * 0.05),
                        Text.rich(
                          TextSpan(
                              text: "Don't have account? ",
                              style: TextStyle(
                                  fontSize: 14, color: CustomizedColors.txtFT),
                              children: [
                                TextSpan(
                                    text: "Register",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterationScreen()));
                                      },
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF6E78F7),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold))
                              ]),
                        )
                      ],
                    )
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
