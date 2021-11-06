import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget? widget;

  BackgroundContainer({this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: widget!,
    );
  }
}
