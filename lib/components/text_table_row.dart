import 'package:flutter/material.dart';
import 'package:nabbda/TextStyles/text_styles.dart';

class TextTableRow extends StatelessWidget {
  final String? label;

  TextTableRow({this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Center(
        child: Text(
          label!,
          style: Style.textStyleBmiText,
        ),
      ),
    );
  }
}
