import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_booking_doctor.dart';
import 'package:nabbda/components/button_feedback.dart';
import 'package:nabbda/components/description_booking_doctor.dart';
import 'package:nabbda/constants.dart';

class SelectTimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    bottom: 0,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: size.width,
                      height: size.height - 150,
                      decoration: BoxDecoration(
                          color: K.WhiteColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            DoctorDescription(
                              name: "DR. Mohamed Saeed Al Gamal",
                              description:
                                  "Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Catheterization Al-Azhar University",
                              image: "assets/images/Male.png",
                            ),
                            Divider(
                              endIndent: 5,
                              indent: 5,
                              color: K.grayColor,
                            ),
                            SizedBox(
                              height: 80,
                              width: size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "DATE & TIME",
                                          style: TextStyle(
                                              fontSize: 12, color: K.textColor),
                                        ),
                                        AutoSizeText(
                                          "Tomorrow, 6 Oct \n 4.45PM",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: K.blackColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    color: K.grayColor,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Reservation Fees",
                                          style: TextStyle(
                                              color: K.textColor, fontSize: 12),
                                        ),
                                        AutoSizeText(
                                          "250 L.E",
                                          style: TextStyle(
                                              color: K.blackColor,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              endIndent: 5,
                              indent: 5,
                              color: K.grayColor,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF6F6F6),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF6F6F6),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF6F6F6),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF6F6F6),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: K.grayColor.shade400)),
                              ),
                            ),
                            Text(
                              "By booking this appointment you agree to the T&C",
                              style:
                                  TextStyle(color: K.grayColor, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
    );
  }
}
