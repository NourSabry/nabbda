import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/icons/MyIcon.dart';
import 'package:nabbda/LoginScreens/DateOfBirth.dart';
import 'package:nabbda/LoginScreens/LoginScreen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                child: Column(
                  children: [
                    Text("Register",
                        style: TextStyle(
                            color: CustomizedColors.blackk,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),

                    Text("Welcome to our community",
                        style: TextStyle(
                            color: CustomizedColors.greyy, fontSize: 14)),
                    SvgPicture.asset("assets/images/regist.svg"),
                    Column(
                      children: [
                        SizedBox(
                          width: 325,
                          height: 51,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            cursorColor: CustomizedColors.btnInAct,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomizedColors.txtF,
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 15),
                                child: Icon(Icons.person_outline_outlined,
                                    color: CustomizedColors.txtFT),
                              ),
                              hintText: "Full name",
                              hintStyle: TextStyle(
                                  color: CustomizedColors.txtFT, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.025),
                        SizedBox(
                          width: 325,
                          height: 51,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            cursorColor: CustomizedColors.btnInAct,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomizedColors.txtF,
                              prefixIcon: Icon(NabdaIcons.phone, size: 15),
                              hintText: "Mobile number",
                              hintStyle: TextStyle(
                                  color: CustomizedColors.txtFT, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.025),
                        SizedBox(
                          width: 325,
                          height: 51,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            cursorColor: CustomizedColors.btnInAct,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomizedColors.txtF,
                              prefixIcon: Icon(NabdaIcons.gender, size: 15),
                              hintText: "Gender",
                              hintStyle: TextStyle(
                                  color: CustomizedColors.txtFT, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.025),
                        SizedBox(
                          width: 325,
                          height: 51,
                          child: TextField(
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => DateOfBirth(),
                            ),
                            textInputAction: TextInputAction.next,
                            cursorColor: CustomizedColors.btnInAct,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomizedColors.txtF,
                              prefixIcon: Icon(NabdaIcons.calendar, size: 15),
                              hintText: "Date of Birth",
                              hintStyle: TextStyle(
                                  color: CustomizedColors.txtFT, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.025),
                        SizedBox(
                          width: 325,
                          height: 51,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            cursorColor: CustomizedColors.btnInAct,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomizedColors.txtF,
                              prefixIcon: Icon(NabdaIcons.mail,
                                  size: 15, color: Color(0xFFBDBDBD)),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: CustomizedColors.txtFT, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.025),
                        SizedBox(
                          width: 325,
                          height: 51,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            cursorColor: CustomizedColors.btnInAct,
                            obscuringCharacter: "*",
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomizedColors.txtF,
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 15),
                                child: Icon(Icons.lock_outline_rounded,
                                    color: CustomizedColors.txtFT),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: CustomizedColors.txtFT, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: CustomizedColors.txtFBo,
                                      width: 0.01)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.04),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 48,
                            width: 208,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFF6E78F7),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Container(
                              child: Text("Register",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
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
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
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
