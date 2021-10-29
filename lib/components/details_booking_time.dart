import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class DetailsBookingTime extends StatelessWidget {
  final String? time;
  final String? price;

  DetailsBookingTime({this.time, this.price});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DATE & TIME",
                  style: TextStyle(fontSize: 12, color: K.textColor),
                ),
                AutoSizeText(
                  time!,
                  style: TextStyle(fontSize: 15, color: K.blackColor),
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            color: K.grayColor,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Reservation Fees",
                  style: TextStyle(color: K.textColor, fontSize: 12),
                ),
                AutoSizeText(
                  price!,
                  style: TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
