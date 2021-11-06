import 'package:flutter/material.dart';

class OurRadioButton extends StatefulWidget {
  @override
  _OurRadioButton createState() => _OurRadioButton();
}

class _OurRadioButton extends State<OurRadioButton> {
  final int? myValue;
  var groupValue;
  final String? option;
  _OurRadioButton({this.myValue, this.groupValue, this.option});

  @override
  Widget build(BuildContext context) {
    return Radio(
      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
      value: myValue!,
      groupValue: groupValue!,
      onChanged: (value) {
        setState(() {
          groupValue = value;
        });
      },
      activeColor: Color(0xFF6E78F7),
    );
  }
}
