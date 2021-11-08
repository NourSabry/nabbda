import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class RegisterButton extends StatelessWidget {
  final Function()? function;
  final String? label;

  RegisterButton({this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: TextButton(
        onPressed: function,
        child: Text(
          label!,
          style: TextStyle(color: K.WhiteColor, fontSize: 16),
        ),
        style: TextButton.styleFrom(
            backgroundColor: K.mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
