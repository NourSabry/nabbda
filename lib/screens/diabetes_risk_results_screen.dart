import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/button_share_alert.dart';
import 'package:nabbda/constants.dart';

class DiabetesResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      AppbarWithLabelAndIcon(
        function: () {
          Get.back();
        },
        label: "Diabetes Risk",
      ),
      Padding(
        padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
        child: Material(
          color: K.WhiteColor,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text:
                        "Your risk of developing type 2 diabetes in the next five years is",
                    style: TextStyle(
                      color: Color(0xFF707070),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Medium ',
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "A score of 11 points increases your risk of developing diabetes. Improving your lifestyle may help reduce your risk of developing type 2 diabetes.",
                  style: TextStyle(
                      color: Color(0xFF3B3C55),
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 10),
                Text(
                  "The Risk of infection ",
                  style: TextStyle(
                      color: Color(0xFF3B3C55),
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Divider(
                  endIndent: 20,
                  indent: 20,
                  color: Colors.blueAccent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Medium",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                            width: 150,
                            child: Text(
                              "A score of 9-11 means that approximately 1 in 30 people will develop diabetes.",
                              textAlign: TextAlign.justify,
                              maxLines: 4,
                              style: TextStyle(color: Color(0xFF707070)),
                              overflow: TextOverflow.ellipsis,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 130.0,
                      child: VerticalDivider(
                        color: Colors.blueAccent,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "High",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 150.0,
                          child: Text(
                            "A score of 12-15 means that approximately one person in 14 will develop diabetes.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Color(0xFF707070)),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ButtonShareAlert(
                        function: () {},
                        label: "Calculate again",
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: RegisterButton(
                        function: () {},
                        label: "Done",
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    ])));
  }
}
