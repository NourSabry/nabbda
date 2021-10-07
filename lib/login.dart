import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabbda/Register.dart';
import 'colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.15),
              Text("Login",
                  style: TextStyle(
                      color: CustomizedColors.blackk,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: size.height * 0.008),
              Text("Hello, you've been missed!",
                  style:
                      TextStyle(color: CustomizedColors.greyy, fontSize: 14)),
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      cursorColor: CustomizedColors.btnInAct,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomizedColors.txtF,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Icon(Icons.mail_outline,
                              color: CustomizedColors.txtFT),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: CustomizedColors.txtFT, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: CustomizedColors.txtFBo, width: 0.01)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: CustomizedColors.txtFBo, width: 0.01)),
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
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Icon(Icons.lock_outline_rounded,
                              color: CustomizedColors.txtFT),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.remove_red_eye_outlined,
                              color: CustomizedColors.txtFT),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: CustomizedColors.txtFT, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: CustomizedColors.txtFBo, width: 0.01)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: CustomizedColors.txtFBo, width: 0.01)),
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
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: CustomizedColors.btnInAct,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                        child: Text("Login",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                    ),
                  ),
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
                                ..onTap = () => goToRegist(context),
                              style: TextStyle(
                                  fontSize: 14,
                                  color: CustomizedColors.btnInAct,
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
    );
  }

  goToRegist(BuildContext context) {
    Navigator.push(context, PageRouteBuilder(
      pageBuilder: (context, anim, seconAnim) {
        return RegisterationScreen();
      },
    ));
  }
}
