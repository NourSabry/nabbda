import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/heart_risk_checkbox_controller.dart';

class HeartRiskCheckBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(HeartRiskCheckBoxController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Get.back();
              },
              label: "Heart Risk",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Have you ever had any of the following\nconditions or procedures?",
                        style: Style.textStyleBmiScreen,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: _controller.labels.length,
                          itemBuilder: (ctx, index) => Obx(() => Row(
                                children: [
                                  Checkbox(
                                    value: _controller.value[index],
                                    onChanged: (bool? v) {
                                      _controller.value[index] = v!;
                                      if (index == 0) {
                                        print(1);
                                      }
                                    },
                                    activeColor: K.mainColor,
                                    side: BorderSide(color: K.mainColor),
                                  ),
                                  Text(
                                    _controller.labels[index],
                                    style: TextStyle(
                                        color: Color(0xFF3B3C55), fontSize: 14),
                                  ),
                                ],
                              ))),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
