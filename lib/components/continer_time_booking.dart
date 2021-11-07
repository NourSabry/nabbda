import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ContainerOfTimeBooking extends StatelessWidget {
  final String? time;
  final LinearGradient? linearGradient;
  final Widget? widget;

  ContainerOfTimeBooking(
      {this.time, this.linearGradient, this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 85,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: K.grayColor.shade400)),
                  child: widget!),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  gradient: linearGradient,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    time!,
                    style: TextStyle(color: K.blackColor, fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
