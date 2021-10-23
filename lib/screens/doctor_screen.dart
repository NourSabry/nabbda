import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_doctor_screen.dart';
import 'package:nabbda/components/card_doctor_screen.dart';

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
                        },
                        image: "assets/images/Male.png",
                        name: "Dr Mohamed Said",
                        time: "20 min",
                        rate: "3.5",
                        description:
                            "Hong Ji-hong, whose birth name was Lee Ji-hong before his adoption, is a hard working man who lost .",
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
