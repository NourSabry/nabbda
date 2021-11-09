import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class RateRow extends StatelessWidget {
  final String? rate;

  RateRow({this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text(
          rate!,
          style: TextStyle(color: K.grayColor, fontSize: 16),
        ),
      ],
    );
  }
}
