import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class AppbarBookingDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
          color: K.mainColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
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
                  "Select a time slot",
                  style: TextStyle(
                      fontSize: 18,
                      color: K.WhiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
