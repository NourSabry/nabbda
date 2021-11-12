import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class BookButtonAppointment extends StatelessWidget {
  final Function()? function;

  BookButtonAppointment({this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 160,
      child: TextButton(
        onPressed: function,
        child: Text(
          "Book an Appointment",
          style: TextStyle(
            color: K.WhiteColor,
            fontSize: 9,
          ),
        ),
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: K.mainColor),
      ),
    );
  }
}
