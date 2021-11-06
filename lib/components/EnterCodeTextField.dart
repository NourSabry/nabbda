import 'package:flutter/material.dart';
import 'package:nabbda/icons/MyIcon.dart';

class EnterCodeTextField extends StatefulWidget {
  @override
  _EnterCodeTextField createState() => _EnterCodeTextField();
}

class _EnterCodeTextField extends State<EnterCodeTextField> {
  String newContent = "";
  var code;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) {
        code = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          setState(() {
            newContent = "Code successfully send, please check your phone!";
          });
          return "";
        } else if (value.length != 4) {
          setState(() {
            newContent = "Wrong code! Enter the right one now";
          });
          return "";
        } else {
          return null;
        }
      },
      autofocus: true,
      decoration: InputDecoration(
        prefixIcon: Icon(
          nabbdaIcons.phone,
          size: 15,
          color: Color(0xFFBDBDBD),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        hintText: "Enter code",
        hintStyle: TextStyle(fontSize: 14, color: Color(0xFFBDBDBD)),
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
