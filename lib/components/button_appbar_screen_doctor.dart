import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ButtonOfAppbar extends StatelessWidget {
  final String? label;
  final Function()? function;

  ButtonOfAppbar({this.label, this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: function,
        child: Container(
          width: 130,
          decoration: BoxDecoration(
              color: K.WhiteColor, borderRadius: BorderRadius.circular(25)),
          child: Center(
              child: Text(
            label!,
            style: TextStyle(color: K.blackColor, fontSize: 16),
          )),
        ),
      ),
    );
  }
}
