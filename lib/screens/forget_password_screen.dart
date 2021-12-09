import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/forget_password_controller.dart';
import 'package:nabbda/screens/enter_code_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ForgetPasswordController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              label: "Back",
              function: () {
                Get.back();
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/lock.svg",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 10),
                        child: Text("Forgot Password",
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xFF2D2D2D),
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Text(
                        "Enter your mobile number to reset your password",
                        style: TextStyle(
                            color: Color(0xFF9E9E9E),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 25),
                        child: TextFieldInput(
                          function: (v) {
                            _controller.value.value = v;
                          },
                          icon: Icon(
                            Icons.phone,
                            color: Color(0xFFBDBDBD),
                          ),
                          hint: "Mobile Number",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: RegisterButton(
                          function: () {
                            if (_controller.value.trim().length < 10) {
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
                            } else if (_controller.value.trim().length == 11) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                duration: Duration(seconds: 3),
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
                              ));
                              Get.to(() => EnterCode());
                            }
                          },
                          label: "Send",
                        ),
                      ),
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
