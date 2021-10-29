import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/alert_select_booking.dart';
import 'package:nabbda/components/appbar_booking_doctor.dart';
import 'package:nabbda/components/container_details_selectTime.dart';
import 'package:nabbda/controller/select_time_controller.dart';
import 'package:nabbda/screens/my_doctor.dart';

class SelectTimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(SelectTimeController());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
                  AppbarBookingDoctor(),
                  Positioned(
                      bottom: 10,
                      left: 20,
                      right: 20,
                      child: Obx(() => ContainerDetailsSelectTime(
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
                          })))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
