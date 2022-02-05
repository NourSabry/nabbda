import 'package:flutter/material.dart';

class ConstRichText extends StatelessWidget {
  final String? leftText;
  final String? rightText;

  ConstRichText({this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: leftText!,
        style: TextStyle(color: Color(0xFF898A8F), fontSize: 12),
        children: <TextSpan>[
          TextSpan(
              text: rightText!,
              style: TextStyle(color: Color(0xFF898A8F), fontSize: 12)),
        ],
      ),
    );
  }
}
