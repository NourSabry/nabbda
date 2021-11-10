import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/NavigationBarScreens/NavigationBar.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/OurTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/icons/MyIcon.dart';
import 'package:nabbda/LoginScreens/DateOfBirth.dart';
import 'package:nabbda/LoginScreens/LoginScreen.dart';

class RegisterationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        alignment: Alignment.topCenter,
        children: [
          Positioned(
              left: 0, right: 0, top: 0, bottom: 550, child: PurpleContainer()),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: SingleChildScrollView(
              child: BackgroundContainer(
                widget: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Text("Register",
                            style: TextStyle(
                                color: CustomizedColors.blackk,
                                fontSize: 22,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("Welcome to our community",
                            style: TextStyle(
                                color: CustomizedColors.greyy, fontSize: 14)),
                        SizedBox(height: 10),
                        SvgPicture.asset("assets/images/regist.svg"),
                        SizedBox(height: 10),
                        OurTextField(
                          hint: "Full Name",
                          prefix: Icon(Icons.person_outline_outlined,
                              color: Color(0xFFBDBDBD)),
                        ),
                        SizedBox(height: 10),
                        OurTextField(
                          hint: "Mobile Number",
                          prefix: Icon(nabbdaIcons.phone,
                              size: 15, color: Color(0xFFBDBDBD)),
                        ),
                        SizedBox(height: 10),
                        OurTextField(
                            hint: "Gender",
                            prefix: Icon(nabbdaIcons.gender, size: 15)),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DateOfBirth()));
                          },
                          child: OurTextField(
                            hint: "Date of Birth",
                            prefix: Icon(Icons.calendar_view_month,
                                size: 15, color: Color(0xFFBDBDBD)),
                          ),
                        ),
                        SizedBox(height: 10),
                        OurTextField(
                            hint: "Email",
                            prefix: Icon(nabbdaIcons.mail,
                                size: 15, color: Color(0xFFBDBDBD))),
                        SizedBox(height: 10),
                        OurTextField(
                            hint: "Password",
                            prefix: Icon(Icons.lock_outline_rounded,
                                color: CustomizedColors.txtFT)),
                        SizedBox(height: 15),
                        NabbdaButton(
                          Name: "Register",
                          function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavigationBar()));
                          },
                        ),
                        SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                              text: "Already have account? ",
                              style: TextStyle(
                                  fontSize: 14, color: CustomizedColors.txtFT),
                              children: [
                                TextSpan(
                                    text: "Login",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => goToLogin(context),
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF6E78F7),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  goToLogin(BuildContext context) {
    Navigator.push(context, PageRouteBuilder(
      pageBuilder: (context, anim, seconAnim) {
        return LoginScreen();
      },
    ));
  }
}
