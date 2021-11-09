import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/bmr_controller.dart';

class BmrScreen extends StatelessWidget {
  final List<String> labels = [
    "Lazy",
    "Slack",
    "Active occasionally",
    "Very active"
  ];

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(BmrController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              label: "Calories Calculator (BMR)",
              function: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      const Text(
                        "Calories Calculator (BMR)",
                        style: Style.textStyleBmiScreen,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: const Text(
                          "A calculation based on calculating the number\nof calories consumed per day for a person\n(male / female) based on several factors such \nas height, weight, age, gender, and the type\nof daily physical activity.",
                          style: Style.textStyleBmiText,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ImageProfile(
                              image: "assets/images/Male.png",
                            ),
                            ImageProfile(
                              image: "assets/images/Female.png",
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Obx(() => RadioButtonRow(
                                label: "Male",
                                function: (v) {
                                  _controller.handleRadioButtonFunction(v);
                                  print(v);
                                },
                                value: 0,
                                groupValue: _controller.value.value,
                              )),
                          Obx(() => RadioButtonRow(
                                label: "Female",
                                function: (v) {
                                  _controller.handleRadioButtonFunction(v);
                                  print(v);
                                },
                                value: 1,
                                groupValue: _controller.value.value,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("   Age"),
                          Obx(() => Slider(
                              value: _controller.valueAge.value,
                              activeColor: K.mainColor,
                              max: 120,
                              inactiveColor: Color(0xFF85D4F1),
                              onChanged: (v) {
                                _controller.handleAgeSlider(v);
                              })),
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF85D4F1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Obx(() => Text(
                                          _controller.valueAge
                                              .toInt()
                                              .toString(),
                                          style: TextStyle(fontSize: 12),
                                        )),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text("Years"),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Height"),
                          Obx(() => Slider(
                              value: _controller.valueHeight.value,
                              activeColor: K.mainColor,
                              max: 200,
                              inactiveColor: Color(0xFF85D4F1),
                              onChanged: (v) {
                                _controller.valueHeight(v);
                              })),
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF85D4F1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Obx(() => Text(
                                          _controller.valueHeight
                                              .toInt()
                                              .toString(),
                                          style: TextStyle(fontSize: 12),
                                        )),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Height"),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Weight"),
                          Obx(() => Slider(
                              value: _controller.valueWeight.value,
                              activeColor: K.mainColor,
                              max: 120,
                              inactiveColor: Color(0xFF85D4F1),
                              onChanged: (v) {
                                _controller.valueWeight(v);
                              })),
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF85D4F1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Obx(() => Text(
                                          _controller.valueWeight
                                              .toInt()
                                              .toString(),
                                          style: TextStyle(fontSize: 12),
                                        )),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text("Weight"),
                              )
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.defaultDialog(
                            content: SizedBox(
                                height: 100,
                                width: 200,
                                child: ListView.builder(
                                    physics: ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: labels.length,
                                    itemBuilder: (ctx, index) => Obx(
                                          () => Padding(
                                            padding: const EdgeInsets.all(4),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    _controller
                                                        .selectText(index);
                                                    _controller.text.value =
                                                        labels[index];
                                                    Navigator.pop(context);
                                                    print(index);
                                                  },
                                                  child: Text(
                                                    labels[index],
                                                    style: TextStyle(
                                                        color: _controller
                                                                    .index ==
                                                                index
                                                            ? K.mainColor
                                                            : Color(0xFFBDBDBD),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                (_controller.index == index)
                                                    ? Icon(
                                                        Icons.check,
                                                        color: K.mainColor,
                                                      )
                                                    : Container()
                                              ],
                                            ),
                                          ),
                                        ))),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 250,
                            height: 40,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Color(0xFFE4E4E4),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => Text(
                                      _controller.text.value,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF3B3C55)),
                                    )),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: K.mainColor,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: RegisterButton(
                          function: () {},
                          label: "Calculate",
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
    );
  }
}
