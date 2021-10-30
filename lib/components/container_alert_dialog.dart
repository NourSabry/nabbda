import 'package:flutter/material.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';

class ContainerOfAlertDialog extends StatelessWidget {
  final double? height;
  final List<String>? labels;
  final String?name;

  ContainerOfAlertDialog({this.labels, this.height,this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: height!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: K.WhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                name!,
                style: TextStyle(color: K.grayColor, fontSize: 18),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                    itemCount: labels!.length,
                    itemBuilder: (context, index) => RadioButtons(
                          label: labels![index],
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
