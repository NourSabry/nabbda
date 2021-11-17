import 'package:flutter/material.dart';

class ConstRichTextRate extends StatelessWidget {
  final String? leftText;
  final String? rightText;

  ConstRichTextRate({this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: leftText!,
        style: TextStyle(
            color: Color(0xFF3B3C55),
            fontSize: 14,
            fontWeight: FontWeight.w600),
        children: <TextSpan>[
          TextSpan(
              text: rightText!,
              style: TextStyle(color: Color(0xFF3B3C55), fontSize: 14)),
        ],
      ),
    );
  }
}
