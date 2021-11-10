import 'package:flutter/material.dart';

class DiabetesRiskText extends StatelessWidget {
  final String? Question;

  DiabetesRiskText({this.Question});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: Question!,
        style: TextStyle(
          color: Color(0xFF707070),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        children: <TextSpan>[
          TextSpan(text: '*', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
