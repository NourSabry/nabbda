import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/profile_screen.dart';

class AppbarMyDoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
          color: K.mainColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          )),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.to(() => ProfileScreen());
              },
              icon: Icon(
                Icons.clear,
                color: K.WhiteColor,
              )),
          Text(
            "My Doctor",
            style: TextStyle(
                color: K.WhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
