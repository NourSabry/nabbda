import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class AppbarWithoutIcon extends StatelessWidget {
  final Function()? function;
  final String? label;

  AppbarWithoutIcon({this.label, this.function});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        height: 160,
        width: size.width,
        decoration: BoxDecoration(
            color: K.mainColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  label!,
                  style: TextStyle(
                      color: K.WhiteColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )));
  }
}
