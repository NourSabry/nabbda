import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button_share_alert.dart';
import 'package:nabbda/components/button_share_screen.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/share_screen_controller.dart';
import 'package:nabbda/screens/Share_report.dart';

class ShareScreen extends StatelessWidget {
  final List<String> labels = [
    "Medical Analysis        ",
    "Medical Reports         ",
    "Previous Prescription ",
    "Radiology Reports       ",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _controller = Get.put(ShareScreenController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Get.back();
              },
              label: "Share",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Container(
                width: size.width,
                height: size.height - 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: K.WhiteColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    ButtonShare(
                      label: "Upload your Report",
                      icon: Icons.upload,
                      function: () {
                        Get.to(() => ShareReport());
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Or",
                        style:
                            TextStyle(color: Color(0xFF3B3C55), fontSize: 16),
                      ),
                    ),
                    ButtonShare(
                      label: "Search in your reports",
                      icon: Icons.search,
                      function: () {
                        Get.defaultDialog(
                            title: "",
                            content: Container(
                              height: 260,
                              width: 300,
                              child: Column(
                                children: [
                                  Text(
                                    "Search in",
                                    style: Style.textStyleBmiText,
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: labels.length,
                                      itemBuilder: (ctx, index) => Obx(() =>
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                labels[index],
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: _controller
                                                            .value[index]
                                                        ? K.mainColor
                                                        : Color(0xFF3B3C55)),
                                              ),
                                              Checkbox(
                                                  activeColor: K.mainColor,
                                                  value:
                                                      _controller.value[index],
                                                  onChanged: (bool? v) {
                                                    _controller.value[index] =
                                                        v!;
                                                  })
                                            ],
                                          ))),
                                  ButtonShareAlert(
                                    function: () {
                                      Get.back();
                                    },
                                    label: "Done",
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
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
