import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/app_setting_controller.dart';
import 'package:nabbda/screens/change_password.dart';
import 'package:nabbda/screens/profile_client_screen.dart';
import 'package:nabbda/utility/alerts.dart';

class AppSettingScreen extends StatelessWidget {
  final List<String> labels = [
    "About us",
    "Terms and conditions ",
    "Privacy Policy",
    "Change Password"
  ];

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(AppSettingController());
    return Scaffold(

      body: SingleChildScrollView(
        child: Theme(
          data: ThemeData(
            unselectedWidgetColor: K.mainColor
          ),
          child: Stack(
            children: [
              AppbarWithLabelAndIcon(
                function: () {
                  Get.back();
                },
                label: "App Setting",
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Choose Language",
                            style: Style.textStyleBmiText,
                          ),
                        ),
                        Obx(() => Row(
                              children: [
                                RadioButtonRow(
                                  label: "English",
                                  value: 0,
                                  groupValue: _controller.value.value,
                                  function: (v) {
                                    _controller.handleValueFun(
                                        v == null ? _controller.value.value : v);
                                  },
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                RadioButtonRow(
                                  label: "Arabic",
                                  value: 1,
                                  groupValue: _controller.value.value,
                                  function: (v) {
                                    _controller.handleValueFun(
                                        v == null ? _controller.value.value : v);
                                    print(v);
                                  },
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "More:",
                          style: Style.textStyleCalculatorBmiText,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: labels.length,
                            itemBuilder: (ctx, index) => Column(
                                  children: [
                                    ListTile(
                                      leading: Text(
                                        labels[index],
                                        style: Style.textStyleBmiText,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: K.mainColor,
                                      ),
                                      onTap: () {
                                        if (index == 0) {
                                          Get.to(() => ProfilePersonScreen());
                                          print(0);
                                        } else if (index == 1) {
                                          print(1);
                                        } else if (index == 2) {
                                          print(2);
                                        } else if (index == 3) {
                                          Get.to((ChangePasswordScreen()));
                                          print(3);
                                        }
                                      },
                                    ),
                                    Divider(
                                      color: K.grayColor,
                                      indent: 20,
                                      endIndent: 20,
                                    )
                                  ],
                                )),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 50),
                          child: GestureDetector(
                            onTap: () {
                              Utility.showAlertLogout(context);
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                  color: Color(0xFFFF3737), fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
