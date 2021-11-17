import 'package:flutter/material.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/constants.dart';

class TextFieldShare extends StatelessWidget {
  final Function(String)? function;
  final String? hint;
  final String? label;

  TextFieldShare({this.function, this.label, this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: TextField(
        onChanged: function,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          labelStyle: Style.textStyleBmiText,
          helperStyle: Style.textStyleDescription,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: K.grayColor)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: K.grayColor,)),
        ),
      ),
    );
  }
}
