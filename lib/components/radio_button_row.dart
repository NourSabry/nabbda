import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          value: value,
          groupValue: groupValue,
          activeColor: Color(0xFF6E78F7),
          onChanged: function,
          toggleable: true,
        ),
        AutoSizeText(
          label!,
          style: TextStyle(fontSize: 14, color: Color(0xFF3B3C55)),
        )
      ],
    );
  }
}
