import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabbda/Register.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/icons/Hide.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF6E78F7),
        elevation: 0,
        title: Text(
          "Back",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 450,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF6E78F7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
              ),
            ),
            Positioned(
              left: 15,
              right: 15,
              top: 20,
              bottom: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF6E78F7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
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
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          cursorColor: CustomizedColors.btnInAct,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: CustomizedColors.txtF,
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 15),
                              child: Icon(Icons.mail_outline,
                                  color: CustomizedColors.txtFT),
                            ),
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
                        SizedBox(height: size.height * 0.03),
                        TextField(
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
                            suffixIcon: Icon(Hide.hide, size: 15),
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
                        SizedBox(height: size.height * 0.015),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("Forgot Password?",
                              style: TextStyle(
                                  color: CustomizedColors.txtFT, fontSize: 14)),
                        ),
                        SizedBox(height: size.height * 0.025),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.08,
                                width: size.width * 0.55,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xFF6E78F7),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Container(
                                  child: Text("Login",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.04),
                            Text("Or use one of your social profiles:",
                                style: TextStyle(
                                    color: CustomizedColors.greyy,
                                    fontSize: 14)),
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
                                      fontSize: 14,
                                      color: CustomizedColors.txtFT),
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
                                            decoration:
                                                TextDecoration.underline,
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
            ),
          ],
        ),
      ),
    );
  }
}
