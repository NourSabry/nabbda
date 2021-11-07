import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ConstRichTextRate extends StatelessWidget {
  final String? leftText;
  final String? rightText;

  ConstRichTextRate({this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: leftText!,
        style: TextStyle(color: K.blackColor, fontSize: 14),
        children: <TextSpan>[
          TextSpan(text: rightText!,
              style: TextStyle(color: K.blackColor, fontSize: 14)),
        ],
      ),
    );
  }
}
