import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/constants.dart';

class PaymentSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          AppbarWithLabelAndIcon(
            function: () {
              Get.back();
            },
            label: "",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
            child: Container(
              width: size.width,
              height: size.height - 200,
              decoration: BoxDecoration(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/mail.svg"),
                  SizedBox(height: 20),
                  Center(
                      child: Text(
                          "We have sent the reservation details to email address",
                          style: TextStyle(
                              color: Color(0xFF313450),
                              fontWeight: FontWeight.bold,
                              fontSize: 12))),
                  SizedBox(height: 30),
                  RegisterButton(
                    function: () {},
                    label: "Done",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
