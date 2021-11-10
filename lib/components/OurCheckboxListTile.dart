import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OurCheckboxListTile extends StatelessWidget {
  final Function(bool?)? function;
  final String? text;
  var isChecked;

  OurCheckboxListTile({this.function, this.text, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      contentPadding: EdgeInsets.all(0),
      dense: false,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Color(0xFF6E78F7),
      title: Text(
        text!,
        style: TextStyle(color: Color(0XFF3B3C55), fontSize: 14),
      ),
      value: isChecked,
      onChanged: function,
    );
  }
}
