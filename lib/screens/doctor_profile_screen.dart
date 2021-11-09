import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/container_details_doctor_profile_screen.dart';
import 'package:nabbda/components/container_doctor_profile_screen.dart';
import 'package:nabbda/screens/booking_doctor.dart';

class DoctorProfileScreen extends StatelessWidget {
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
                  label: "",
                  function: () {
                    Navigator.pop(context);
                  },
                ),
                ContainerProfile(
                  vote: "89%",
                  job: " Senior Cardiologist",
                  feedback: "44",
                  description:
                      "Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Catheterization Al-Azhar University",
                  rate: "3.6",
                  name: "DR. Mohamed Saeed Al Gamal",
                  imageProfile: "assets/images/Male.png",
                  images: "assets/images/Male.png",
                ),
              ],
            ),
            ContainerDetails(
              book: () {
                print("function Booking");
              },
              bookClinic: () {
                print("function book clinic");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookingDoctorScreen()));
              },
              bookVideo: () {
                print("function book video");
              },
              giveFeedback: () {
                print("function give feedback");
              },
              distance: "100",
              location: "Alexandria .egypt",
              priceClinic: "250 L.E",
              priceVideo: "100 L.E",
              timeClosed: "8:30 AM - 9 PM",
              timeOpen: "8:30 PM -9 AM",
              services: [
                'Cardiac Catheterization',
                'Electrophysiology',
                'Screening & Diagnosis'
              ],
              specialization: ['Cardiology', 'Trichologist', 'Cosmetologist'],
            )
          ],
        ),
      ),
    );
  }
}
