import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_doctor_screen.dart';
import 'package:nabbda/components/card_doctor_screen.dart';
import 'package:nabbda/screens/doctor_profile_screen.dart';

class DoctorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarOfDoctorScreen(),
            SizedBox(
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => CardOfDoctorScreen(
                        function: () {
                          print("doctor");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoctorProfileScreen()));
                        },
                        image: "assets/images/Male.png",
                        name: "Dr Mohamed Said",
                        time: "20 min",
                        rate: "3.5",
                        description:"Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Catheterization Al-Azhar University",
                        price: "250 L.E",
                        feedback: "44 ",
                        job: "senior",
                        location: "alex.egypt",
                        phoneNumber: "000123456789",
                        vote: "98% ",
                      )),
            )
          ],
        ),
      ),
    );
  }
}
