import 'package:flutter/material.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/constants.dart';

class ButtonShareAlert extends StatelessWidget {
  final Function()? function;
  final String? label;

  ButtonShareAlert({this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: TextButton(
        onPressed: function,
        child: Text(
          label!,
          style: Style.textStyleCalculatorBmiText,
        ),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: K.mainColor),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
