import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ContainerOfTimeBooking extends StatelessWidget {
  final List<String>? labelsTime;
  final String? time;
  final LinearGradient? linearGradient;

  ContainerOfTimeBooking({this.time, this.labelsTime, this.linearGradient});

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
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: labelsTime!.length,
                    itemBuilder: (context, index) => Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            labelsTime![index],
                            style: TextStyle(color: K.blackColor, fontSize: 15),
                          ),
                        ))),
              ),
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
