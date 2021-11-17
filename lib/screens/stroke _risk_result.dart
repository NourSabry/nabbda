import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';

class StrokeRiskConclusion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Get.back();
              },
              label: "Stroke Risk ",
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 130),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: size.height - 200,
                width: size.width,
                decoration: BoxDecoration(
                  color: K.WhiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Your Stroke Risk is ",
                          style: Style.textStyleBmiScreen,
                        ),
                        Text(
                          "25%",
                          style: Style.textStyleAlertText,
                        ),
                      ],
                    ),
                    Text(
                      "You need to ….",
                      style: Style.textStyleBmiText,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
