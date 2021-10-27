import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  final String? label;

  RadioButtons({this.label});

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  var _radioSelected;

  String? radioVal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: 1,
          groupValue: _radioSelected,
          activeColor: Colors.blue,
          onChanged: (value) {
            setState(() {
              _radioSelected = value;
            });
          },
          toggleable: true,
        ),
        AutoSizeText(
          widget.label!,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
