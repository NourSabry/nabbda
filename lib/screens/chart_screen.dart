import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/charts.dart';
import 'package:nabbda/components/textfield_charts.dart';
import 'package:nabbda/constants.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Heart Rate",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, right: 10, left: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFieldSearchRate(
                        label: "Heart Rate / Per minute",
                        function: (v) {
                          print(v);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25,right: 10),
                        child: SizedBox(
                          height: 200,
                          child: ChartsExample(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
