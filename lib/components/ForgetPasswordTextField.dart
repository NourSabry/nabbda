import 'package:flutter/material.dart';
import 'package:nabbda/icons/MyIcon.dart';

class ForgetPasswordTextField extends StatefulWidget {
  @override
  _ForgetPasswordTextField createState() => _ForgetPasswordTextField();
}

class _ForgetPasswordTextField extends State<ForgetPasswordTextField> {
  final Function(String)? function;

  _ForgetPasswordTextField({this.function});

  var mobilePhone;
  String contentText = "";

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) {
        mobilePhone = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          setState(() {
            contentText = "Sorry, please enter your number!";
          });
          return "";
        } else if (value.length != 11) {
          setState(() {
            contentText = "Sorry, this number isn’t registered before!";
          });
          return "";
        } else {
          return null;
        }
      },
      autofocus: true,
      decoration: InputDecoration(
        hintText: " Mobile Number",
        hintStyle: TextStyle(
          fontSize: 14,
          color: Color(0xFFBDBDBD),
        ),
        prefixIcon: Icon(
          nabbdaIcons.phone,
          size: 15,
          color: Color(0xFFBDBDBD),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xFFF1F1F1)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xFFF1F1F1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xFFF1F1F1)),
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: Color(0xFFF1F1F1),
      ),
    );
  }
}
