import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_my_doctor_screen.dart';
import 'package:nabbda/components/container_my_doctor_screen.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/profile_screen.dart';

class MyDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              child: Stack(
                children: [
                  AppbarMyDoctorScreen(),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: SizedBox(
                      height: size.height,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) =>
                              ContainerOfMyDoctorScreen(
                                image: "assets/images/Male.png",
                                name: "DR. Mohamed Saeed Al Gamal",
                                description:
                                    "Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Catheterization Al-Azhar University",
                                status: "CLOSED TODAY",
                                job: " Senior Cardiologist",
                                time: "9:30AM - 08:00PM",
                                functionVideoCall: () {},
                              )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
