import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class MedicationContainers extends StatelessWidget {
  final String? hint;
  final String? text;
  final Function(String)? onchange;

  MedicationContainers({this.hint, this.text, this.onchange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 160,
      padding: EdgeInsets.only(top: 15, left: 20, right: 15),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text!,
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          TextField(
            onChanged: onchange,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: K.blackColor),
            decoration: InputDecoration(
                hintText: hint!,
                hintStyle: TextStyle(fontSize: 16, color: Color(0xFFA8A8A8)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
