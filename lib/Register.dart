import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/login.dart';
import 'package:nabbda/icons/MyIcon.dart';
import 'package:nabbda/DateOfBirth.dart';

class RegisterationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios,
                  size: 27, color: CustomizedColors.bck)),
        ),
        title: Text("Back",
            style: TextStyle(
              color: CustomizedColors.bck,
              fontSize: 22,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.03),
              Text("Register",
                  style: TextStyle(
                      color: CustomizedColors.blackk,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: size.height * 0.008),
              Text("Welcome to our community",
                  style:
                      TextStyle(color: CustomizedColors.greyy, fontSize: 14)),
              SizedBox(height: size.height * 0.02),
              Image.asset("assets/images/regist.png"),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      cursorColor: CustomizedColors.btnInAct,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomizedColors.txtF,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Icon(Icons.person_outline_outlined,
                              color: CustomizedColors.txtFT),
                        ),
                        hintText: "Full name",
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
                    SizedBox(height: size.height * 0.025),
                    TextField(
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      cursorColor: CustomizedColors.btnInAct,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomizedColors.txtF,
                        prefixIcon: Icon(MyIcon.phone, size: 15),
                        hintText: "Mobile number",
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
                    SizedBox(height: size.height * 0.025),
                    TextField(
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      cursorColor: CustomizedColors.btnInAct,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomizedColors.txtF,
                        prefixIcon: Icon(MyIcon.gender, size: 15),
                        hintText: "Gender",
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
                    SizedBox(height: size.height * 0.025),
                    TextField(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => DateOfBirth(),
                      ),
                      textInputAction: TextInputAction.next,
                      cursorColor: CustomizedColors.btnInAct,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomizedColors.txtF,
                        prefixIcon: Icon(MyIcon.calendar, size: 15),
                        hintText: "Date of Birth",
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
                    SizedBox(height: size.height * 0.025),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      cursorColor: CustomizedColors.btnInAct,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomizedColors.txtF,
                        prefixIcon: Icon(MyIcon.mail,
                            size: 15, color: Color(0xFFBDBDBD)),
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
                    SizedBox(height: size.height * 0.025),
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
                    SizedBox(height: size.height * 0.04),
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
                        child: Text("Register",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
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

  goToLogin(BuildContext context) {
    Navigator.push(context, PageRouteBuilder(
      pageBuilder: (context, anim, seconAnim) {
        return LoginScreen();
      },
    ));
  }
}
