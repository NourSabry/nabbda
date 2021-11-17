import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewTextField extends StatelessWidget {
  String? myValue;
  final String? hint;
  final String? label;
  final Icon? suffix;
  final Function(String)? function;

  NewTextField({this.myValue, this.hint, this.label, this.suffix,this.function});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: function,
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
          hintStyle: TextStyle(color: Color(0xFFBDBDBD), fontSize: 14),
          suffixIcon: suffix,
          labelText: label,
          labelStyle: TextStyle(
              color: Color(0xFF707070),
              fontWeight: FontWeight.w500,
              fontSize: 22)),
    );
  }
}
