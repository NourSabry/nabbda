import 'package:flutter/material.dart';
import 'package:nabbda/components/button_appbar_screen_doctor.dart';
import 'package:nabbda/constants.dart';

class AppbarOfDoctorScreen extends StatelessWidget {
  final List<String> labels = [
    'Availability',
    'In Hospital',
    'Online Booking',
    'Online Booking'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              color: K.mainColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: K.WhiteColor,
                  ),
                ),
                Text(
                  "Doctors",
                  style: TextStyle(
                      fontSize: 25,
                      color: K.WhiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Container(
            height: 35,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: labels.length,
                itemBuilder: (context, index) => ButtonOfAppbar(
                      label: labels[index],
                      function: () {
                        if (index == 0) {
                          print("index=0");
                        } else if (index == 1) {
                          print("index==1");
                        } else if (index == 2) {
                          print("index==2");
                        } else {
                          print("index==3");
                        }
                      },
                    )),
          ),
        ),
      ],
    );
  }
}
