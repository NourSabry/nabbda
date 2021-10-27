import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_booking_doctor.dart';
import 'package:nabbda/components/description_booking_doctor.dart';
import 'package:nabbda/components/button_feedback.dart';
import 'package:nabbda/components/continer_time_booking.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/select_time_screen.dart';

class BookingDoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              AppbarBookingDoctor(),
              Positioned(
                bottom: 0,
                right: 20,
                left: 20,
                child: Container(
                  height: size.height - 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: K.WhiteColor),
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
                          time: "Morning",
                          labelsTime: ["10:00", "11:00", "12:00"],
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
                          time: "Afternoon",
                          labelsTime: [
                            "12:00",
                            "01:00",
                            "02:00",
                            "03:00",
                            "04:00"
                          ],
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
                          time: "Evening & Night",
                          labelsTime: [
                            "05:00",
                            "06:00",
                            "07:00",
                            "08:00",
                            "09:00",
                            "10:00",
                          ],
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
                                      builder: (context) =>
                                          SelectTimeScreen()));
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
          ))
    ]));
  }
}
