import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class AppbarWithLabelAndIcon extends StatelessWidget {
  final Function()? function;
  final String? label;

  AppbarWithLabelAndIcon({this.label, this.function});

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
        child: Row(
          children: [
            IconButton(
              onPressed: function,
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: K.WhiteColor,
              ),
            ),
            Text(
              label!,
              style: TextStyle(
                  color: K.WhiteColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
