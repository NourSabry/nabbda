import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ConstRichText extends StatelessWidget {
  final String? leftText;
  final String? rightText;

  ConstRichText({this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: leftText!,
        style: TextStyle(color: K.grayColor, fontSize: 15),
        children: <TextSpan>[
          TextSpan(text: rightText!, style: TextStyle(color: K.blackColor)),
        ],
      ),
    );
  }
}
