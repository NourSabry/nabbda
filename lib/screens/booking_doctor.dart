import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_booking_doctor.dart';
import 'package:nabbda/components/description_booking_doctor.dart';
import 'package:nabbda/components/button_feedback.dart';
import 'package:nabbda/components/continer_time_booking.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/booking_doctor_controller.dart';
import 'package:nabbda/screens/select_time_screen.dart';

class BookingDoctorScreen extends StatelessWidget {
  final List<String> labelsMorning = ["10:00", "11:00", "12:00"];
  final List<String> labelsAfterNoon = [
    "12:00",
    "01:00",
    "02:00",
    "03:00",
    "04:00"
  ];
  final List<String> labelsNight = [
    "05:00",
    "06:00",
    "07:00",
    "08:00",
    "09:00",
    "10:00",
  ];

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(BookingDoctorController());
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          AppbarBookingDoctor(),
          Padding(
            padding: const EdgeInsets.only(top: 150, right: 10, left: 10),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: K.WhiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  children: [
                    DoctorDescription(
                      name: "DR. Mohamed Saeed Al Gamal",
                      description:
                          "Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Catheterization Al-Azhar University",
                      image: "assets/images/Male.png",
                    ),
                    ContainerOfTimeBooking(
                      widget: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: labelsMorning.length,
                          itemBuilder: (context, index) => Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Obx(
                                    () => TextButton(
                                      onPressed: () {
                                        _controller.selectMorningTime(index);
                                      },
                                      child: Text(labelsMorning[index],
                                          style: TextStyle(
                                              color: K.blackColor,
                                              fontSize: 15)),
                                      style: TextButton.styleFrom(
                                          backgroundColor:
                                              _controller.indexMorning == index
                                                  ? K.mainColor
                                                  : K.WhiteColor),
                                    ),
                                  )))),
                      time: "Morning",
                      linearGradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFFFC0D8),
                          Color(0xFFFFFB91),
                        ],
                      ),
                    ),
                    ContainerOfTimeBooking(
                      widget:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: labelsAfterNoon.length,
                          itemBuilder: (context, index) => Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Obx(
                                        () => TextButton(
                                      onPressed: () {
                                        _controller.selectAfterNoonTime(index);
                                      },
                                      child: Text(labelsAfterNoon[index],
                                          style: TextStyle(
                                              color: K.blackColor,
                                              fontSize: 15)),
                                      style: TextButton.styleFrom(
                                          backgroundColor:
                                          _controller.indexAfterNoon == index
                                              ? K.mainColor
                                              : K.WhiteColor),
                                    ),
                                  )))) ,
                      time: "Afternoon",
                      linearGradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFC1FFF1),
                          Color(0xFFE0CCFF),
                        ],
                      ),
                    ),
                    ContainerOfTimeBooking(
                      widget: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: labelsNight.length,
                          itemBuilder: (context, index) => Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Obx(
                                        () => TextButton(
                                      onPressed: () {
                                        _controller.selectNightTime(index);
                                      },
                                      child: Text(labelsNight[index],
                                          style: TextStyle(
                                              color: K.blackColor,
                                              fontSize: 15)),
                                      style: TextButton.styleFrom(
                                          backgroundColor:
                                          _controller.indexNight == index
                                              ? K.mainColor
                                              : K.WhiteColor),
                                    ),
                                  )))),
                      time: "Evening & Night",
                      linearGradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF90E4FF),
                          Color(0xFF9FFFF5),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ButtonFeedback(
                        book: () {
                          print("booking");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectTimeScreen()));
                        },
                        giveFeedback: () {
                          print("giveFeedback");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    ]));
  }
}
