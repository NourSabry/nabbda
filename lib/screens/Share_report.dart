import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/text_field_medical_records.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/error_screen.dart';

class ShareReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Share",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: K.WhiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upload file report\nMax Size: 10 MB",
                        style: Style.textStyleBmiText,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: NewTextField(
                          hint: "Write your report name",
                          label: "File Name",
                          function: (v) {
                            print(v);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: NewTextField(
                          label: "Notes",
                          hint: "Write any notes about it",
                          function: (v) {
                            print(v);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RegisterButton(
                        function: () {
                          Get.to(() => Errors());
                        },
                        label: "Share",
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: SvgPicture.asset("assets/images/upload.svg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
