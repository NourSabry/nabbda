import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/container_my_doctor_screen.dart';

class MyDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AppbarWithLabelAndIcon(
                  function: () {
                    Navigator.pop(context);
                  },
                  label: "My Doctor",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
