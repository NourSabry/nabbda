import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/setting_profile_screen.dart';
import 'package:nabbda/components/container_profile_screen.dart';
import 'package:nabbda/screens/app_setting_screen.dart';
import 'package:nabbda/screens/doctor_screen.dart';
import 'package:nabbda/screens/health_interest_screen.dart';
import 'package:nabbda/screens/payment_method_screen.dart';
import 'package:nabbda/screens/profile_client_screen.dart';

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
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerOfProfile(
              name: "Ahmed",
              phone: "01004478885",
              image: "assets/images/Male.png",
              functionComplete: () {
                Get.to(() => ProfilePersonScreen());
                print("function");
              },
              percent: 0.5,
              percentText: "50%",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
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
                              Get.to(() => DoctorsScreen());
                            } else if (index == 1) {
                              print("index=1");
                            } else if (index == 2) {
                              print("index==2");
                            } else if (index == 3) {
                              print("index==3");
                            } else if (index == 4) {
                              print("index==4");
                            } else if (index == 5) {
                              Get.to(() => HealthInterest());
                              print("index==5");
                            } else if (index == 6) {
                              Get.to(()=>PaymentMethodScreen());
                              print("index=6");
                            } else if (index == 7) {
                              Get.to(() => AppSettingScreen());

                              print("index=7");
                            }
                          },
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
