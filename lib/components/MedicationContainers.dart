import 'package:flutter/material.dart';

class MedicationContainers extends StatelessWidget {
  final String? hint;
  final String? text;

  MedicationContainers({this.hint, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.only(top: 15, left: 20, right: 15),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
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
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF6F6F6)),
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
