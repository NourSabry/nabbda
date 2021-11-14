import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/Home.dart';

class NewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {},
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
                            Get.defaultDialog(
                              title: "",
                              content: Builder(builder: (context) {
                                return Container(
                                    width: 500,
                                    height: 240,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/success.svg"),
                                        SizedBox(height: 8),
                                        Text("Changed successfully!",
                                            style: TextStyle(
                                              color: Color(0xFF6E78F7),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        SizedBox(height: 10),
                                        Text(
                                          "Password has been changed, return to login and try login again",
                                          style: TextStyle(
                                              color: Color(0xFF9E9E9E),
                                              fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 30),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Go to login",
                                            style: TextStyle(
                                                color: Color(0xFF6E78F7),
                                                fontSize: 16),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(242, 54),
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF6E78F7)),
                                            shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      10.0),
                                            ),
                                            primary: Colors.white,
                                            elevation: 0.0,
                                          ),
                                        ),
                                      ],
                                    ));
                              }),
                            );
                            // Get.to(()=>Home());
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
