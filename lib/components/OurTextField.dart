import 'package:flutter/material.dart';

class OurTextField extends StatelessWidget {
  final Function(String)? function;
  final String? hint;
  final Icon? prefix;

  OurTextField({this.function, this.hint, this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: function,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: Color(0xFFF1F1F1),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFF1F1F1),
        prefixIcon: prefix,
        hintText: hint!,
        hintStyle: TextStyle(color: Color(0xFFBDBDBD), fontSize: 14),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Color(0xFFF1F1F1), width: 0.01)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
