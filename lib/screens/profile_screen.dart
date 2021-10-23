import 'package:flutter/material.dart';
import 'package:nabbda/components/setting_profile_screen.dart';
import 'package:nabbda/screens/container_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> images = [
    "assets/images/user.svg",
    "assets/images/appointments.svg",
    "assets/images/userOnline.svg",
    "assets/images/chemistry.svg",
    "assets/images/wristwatch.svg",
    "assets/images/present.svg",
    "assets/images/atmCard.svg",
    "assets/images/settings.svg"
  ];
  final List<String> labels = [
    'MyDoctors',
    "Appointments",
    "Online Consultation",
    "Medication Records",
    "Reminders",
    "Health Interest",
    "My Payments",
    "Settings"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ContainerOfProfile(
                name: "Ahmed",
                phone: "01004478885",
                image: "assets/images/heart.png",
                functionSetting: () {
                  print("function");
                },
                percent: 0.5,
                percentText: "50%",
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(
                  height: size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (context, index) => SettingProfileScreen(
                            images: images[index],
                            label: labels[index],
                            function: () {
                              if (index == 0) {
                                print("index=0");
                              } else if (index == 1) {
                                print("index=1");
                              } else if (index == 2) {
                                print("index==2");
                              } else if (index == 3) {
                                print("index==3");
                              } else if (index == 4) {
                                print("index==4");
                              } else if (index == 5) {
                                print("index==5");
                              } else if (index == 6) {
                                print("index=6");
                              } else if (index == 7) {
                                print("index=7");
                              } else {
                                print("index=8");
                              }
                            },
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
