import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/container_medications.dart';
import 'package:nabbda/components/medications_card.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/medications_controller.dart';

class MedicationsScreen extends StatelessWidget {
  final List<String> labelsRepeat = [
    "Never",
    "Every Day",
    "Every Week",
    "Every 2 Weeks",
    "Every Month",
    "Every Year"
  ];
  final List<String> labelsDuration = [
    "Never",
    "2 Days",
    "Week",
    "2 Week",
    "Month",
    "Year"
  ];
  final List<String> labelsTime = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12"
  ];

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(MedicationsController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        AppbarWithLabelAndIcon(
          function: () {
            Navigator.pop(context);
          },
          label: "Medications ",
        ),
        Padding(
          padding: EdgeInsets.only(top: 130, right: 10, left: 10),
          child: Material(
            color: K.WhiteColor,
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MedicationContainer1(),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MedicationContainers(
                          hint: "———— pills",
                          text: "Amount",
                        ),
                        MedicationContainers(
                          hint: "——— g",
                          text: "Weight ",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("Reminder Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.defaultDialog(
                              title: "Repeat",
                              titleStyle: Style.textStyleAlertText,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                              confirm: RegisterButton(
                                function: () {
                                  Navigator.pop(context);
                                },
                                label: "Save",
                              ),
                              titlePadding: EdgeInsets.only(top: 15),
                              content: SizedBox(
                                  height: 250,
                                  width: 220,
                                  child: ListView.builder(
                                    itemCount: labelsRepeat.length,
                                    shrinkWrap: true,
                                    itemBuilder: (ctx, index) => Obx(() =>
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  _controller
                                                      .selectRepeatValue(index);
                                                  _controller
                                                          .selectRepeat.value =
                                                      labelsRepeat[index];
                                                },
                                                child: Text(
                                                  labelsRepeat[index],
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: _controller
                                                                  .valueRepeat ==
                                                              index
                                                          ? K.mainColor
                                                          : Color(0xFF707070),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              if (_controller.valueRepeat ==
                                                  index)
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 30),
                                                  child: Icon(
                                                    Icons.check,
                                                    color: K.mainColor,
                                                    size: 25,
                                                  ),
                                                )
                                              else
                                                Container()
                                            ],
                                          ),
                                        )),
                                  )));
                        },
                        child: Obx(() => MedicationContainers(
                              text: "Repeat",
                              hint: _controller.selectRepeat.value,
                              onchange: (v) {
                                _controller.selectRepeat.value = v;
                                print(_controller.selectRepeat.value);
                              },
                            )),
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                                title: "Duration",
                                titlePadding: EdgeInsets.only(top: 15),
                                titleStyle: Style.textStyleAlertText,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                confirm: RegisterButton(
                                  function: () {
                                    Navigator.pop(context);
                                  },
                                  label: "Save",
                                ),
                                content: SizedBox(
                                    height: 250,
                                    width: 200,
                                    child: ListView.builder(
                                      itemCount: labelsDuration.length,
                                      itemBuilder: (ctx, index) => Obx(() =>
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    _controller
                                                        .selectDurationValue(
                                                            index);
                                                    _controller.selectDuration
                                                            .value =
                                                        labelsDuration[index];
                                                  },
                                                  child: Text(
                                                    labelsDuration[index],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: _controller
                                                                    .valueDuration ==
                                                                index
                                                            ? K.mainColor
                                                            : Color(0xFF707070),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                if (_controller.valueDuration ==
                                                    index)
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 30),
                                                    child: Icon(
                                                      Icons.check,
                                                      size: 30,
                                                      color: K.mainColor,
                                                    ),
                                                  )
                                                else
                                                  Container()
                                              ],
                                            ),
                                          )),
                                    )));
                          },
                          child: Obx(() => MedicationContainers(
                                text: "Duration",
                                hint: _controller.selectDuration.value,
                                onchange: (v) {
                                  _controller.selectDuration.value = v;
                                },
                              ))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                  title: "Select Time",
                                  titleStyle: Style.textStyleAlertText,
                                  confirm: RegisterButton(
                                    function: () {
                                      Navigator.pop(context);
                                    },
                                    label: "Save",
                                  ),
                                  content: Container(
                                      height: 200,
                                      width: 200,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: ClampingScrollPhysics(),
                                        itemCount: labelsTime.length,
                                        itemBuilder: (ctx, index) => Obx(() =>
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        _controller
                                                                .selectTimeValue
                                                                .value =
                                                            labelsTime[index];
                                                        _controller
                                                            .selectTime(index);
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4),
                                                        child: Text(
                                                          labelsTime[index],
                                                          style: TextStyle(
                                                              fontSize: _controller
                                                                          .timeIndex
                                                                          .value ==
                                                                      index
                                                                  ? 25
                                                                  : 15,
                                                              color: _controller
                                                                          .timeIndex
                                                                          .value ==
                                                                      index
                                                                  ? K.mainColor
                                                                  : Color(
                                                                      0xFF707070),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  if (_controller.timeIndex ==
                                                      index)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        ": 30",
                                                        style: TextStyle(
                                                            color: K.mainColor,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    )
                                                  else
                                                    Container(),
                                                  if (_controller
                                                          .timeIndex.value ==
                                                      index)
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        _controller.check.value
                                                            ? Text(
                                                                "AM",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        25,
                                                                    color: K
                                                                        .mainColor),
                                                              )
                                                            : Text(
                                                                "PM",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        25,
                                                                    color: K
                                                                        .mainColor),
                                                              ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            _controller
                                                                .selectCheck();
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .arrow_drop_down,
                                                            color: K.mainColor,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  else
                                                    Container(),
                                                ],
                                              ),
                                            )),
                                      )));
                            },
                            child: Obx(() => MedicationContainers(
                                text: "Start Time",
                                hint: _controller.selectTimeValue.value)),
                          ),

                        MedicationContainers(
                            text: "End Time", hint: "Select time"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}

