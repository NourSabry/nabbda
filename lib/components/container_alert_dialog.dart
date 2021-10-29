import 'package:flutter/material.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';

class ContainerOfAlertDialog extends StatelessWidget {
  final double? height;
  final List<String>? labels;
  final String? name;
  final int value;
  final int? groupValue;
  final Function(int?)? function;

  ContainerOfAlertDialog(
      {this.labels,
      this.height,
      this.name,
      this.value = 0,
      this.function,
      this.groupValue});

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
                    itemBuilder: (context, index) => RadioButtonRow(
                          value: value,
                          function: function,
                          groupValue: groupValue,
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
