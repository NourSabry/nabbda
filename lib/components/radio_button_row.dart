import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class RadioButtonRow extends StatelessWidget {
  final int value;
  final int? groupValue;
  final String? label;
  final Function(int?)? function;

  RadioButtonRow({this.value = 0, this.groupValue, this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          activeColor: K.mainColor,
          onChanged: function,
          toggleable: true,
        ),
        AutoSizeText(
          label!,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
