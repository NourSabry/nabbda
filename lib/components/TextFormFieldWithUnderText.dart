import 'package:flutter/material.dart';

class TextFormFieldWithUnderText extends StatelessWidget {
  final String? text;
  final String? label;
  final Function(String?)? function;

  TextFormFieldWithUnderText({this.text, this.label, this.function});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            onSaved: function,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              labelText: label!,
              labelStyle: TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFCCCCCC)),
              ),
            ),
            style: TextStyle(
                color: Color(0xFF3B3C55),
                fontSize: 16,
                fontWeight: FontWeight.w600)),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            text!,
            style: TextStyle(
              color: Color(0XFF707070),
              fontSize: 12,
            ),
          ),
        )
      ],
    );
  }
}
