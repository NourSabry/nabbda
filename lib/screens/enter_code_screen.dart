import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:nabbda/controller/enter_code_controller.dart';
import 'package:nabbda/screens/new_password_screen.dart';

class EnterCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(EnterCodeController());
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
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: K.WhiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: SvgPicture.asset("assets/images/code.svg"),
                    ),
                    Text("Enter Code",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D2D2D),
                            fontSize: 22)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          "Please enter the code sent to your mobile number",
                          style: TextStyle(
                              color: Color(0xFF9E9E9E), fontSize: 14)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: TextFieldInput(
                        function: (c) {
                          if (c.length < 10) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Colors.white,
                                content: Container(
                                  alignment: Alignment.center,
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9544F),
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.red,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 15),
                                      Icon(Icons.cancel,
                                          color: Colors.white, size: 30),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                            "Sorry, this number isn’t registered before!",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Colors.white,
                                content: Container(
                                  alignment: Alignment.center,
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2EC38B),
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.red,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 15),
                                      Icon(Icons.check,
                                          color: Colors.white, size: 30),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                            "Code successfully send, please check your phone",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        hint: "Enter code",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "     Code expires in :",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD), fontSize: 12),
                          ),
                          CustomTimer(
                            controller: _controller.controller,
                            from: Duration(seconds: 34),
                            to: Duration(minutes: 0),
                            interval: Duration(seconds: 1),
                            builder: (CustomTimerRemainingTime remaining) {
                              return Text(
                                "${remaining.minutes}:${remaining.seconds}",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFFD9544F)),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: RegisterButton(
                        function: () {
                          _controller.startTimer();
                          Get.to(() => NewPasswordScreen());
                        },
                        label: "Send",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't get the code?",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD), fontSize: 12),
                          ),
                          Text(
                            " Resend code",
                            style: TextStyle(
                                color: Color(0xFF6E78F7),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
