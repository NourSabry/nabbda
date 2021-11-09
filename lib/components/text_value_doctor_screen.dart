import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class TextDetails extends StatelessWidget {
  final String? label;

  TextDetails({this.label});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      label!,
      maxLines: 1,
      style: TextStyle(
        color: K.blackColor,
        fontSize: 8,
      ),
    );
  }
}
