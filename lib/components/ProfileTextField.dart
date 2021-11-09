import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileTextField extends StatelessWidget {
  String? myValue;
  final String? hint;
  final String? label;

  ProfileTextField({this.myValue, this.hint, this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) {
        myValue = value;
      },
      textAlign: TextAlign.left,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 0, top: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xFF3B3C55)),
          labelText: label,
          labelStyle: TextStyle(
              color: Color(0xFF707070),
              fontWeight: FontWeight.w500,
              fontSize: 22)),
    );
  }
}
