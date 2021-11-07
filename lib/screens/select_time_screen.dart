import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/alert_select_booking.dart';
import 'package:nabbda/components/appbar_booking_doctor.dart';
import 'package:nabbda/components/container_details_selectTime.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/controller/select_time_controller.dart';
import 'package:nabbda/screens/my_doctor.dart';

class SelectTimeScreen extends StatelessWidget {
  final List<String> labels = ['Male', 'Female', 'Other'];
  final List<int> values = [0, 1, 2];

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(SelectTimeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AppbarBookingDoctor(),
                Padding(
                  padding: const EdgeInsets.only(top: 150, right: 10, left: 10),
                  child: Obx(() => ContainerDetailsSelectTime(
                      widget: ListView.builder(
                        itemCount: labels.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (ctx, index) => Obx(() => RadioButtonRow(
                              label: labels[index],
                              function: (int? v) {
                                _controller.handleRadioChange(v);
                                if (index == 0) {
                                  print(0);
                                } else if (index == 1) {
                                  print(1);
                                } else if (index == 2) {
                                  print(2);
                                }
                              },
                              groupValue: _controller.i.value,
                              value: values[index],
                            )),
                      ),
                      functionAccount: (v) {},
                      functionName: (v) {},
                      functionPhone: (v) {},
                      functionGiveFeedback: () {},
                      functionBook: () {
                        Get.to(() => MyDoctor());
                      },
                      price: "250 L.E",
                      time: "Tomorrow, 6 Oct \n 4.45PM",
                      check: _controller.check.value,
                      dropdownValue: _controller.value.value,
                      function: () {
                        showAlertDialogSelect(context, () {
                          _controller.MySelfFunction();
                          Navigator.pop(context);
                        }, () {
                          _controller.OtherSelfFunction();
                          Navigator.pop(context);
                        });
                      })),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
