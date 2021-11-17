import 'package:flutter/material.dart';

class TextFieldSearchRate extends StatelessWidget {
  final String? label;
  final Function(String)? function;

  TextFieldSearchRate({this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        onChanged: function,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          filled: true,
          fillColor: Color(0xFFF6F6F6),
          hintText: label!,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
