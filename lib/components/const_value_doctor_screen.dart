import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ConstTextValue extends StatelessWidget {
  final String? label;

  ConstTextValue({this.label});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      label!,
      style: TextStyle(
          color: K.mainColor, fontSize: 7, fontWeight: FontWeight.bold),
    );
  }
}
