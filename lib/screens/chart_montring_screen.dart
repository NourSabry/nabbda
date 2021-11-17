import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/charts.dart';
import 'package:nabbda/components/details_rate.dart';
import 'package:nabbda/components/textfield_charts.dart';
import 'package:nabbda/constants.dart';

class ChartMonitoringScreen extends StatelessWidget {
  final String? nameOfScreen;
  final String? hint;
  final Function(String)? onChange;
  final List<FlSpot>? values;
  final String? typeRate;
  final List<String>? rate;
  final List<String>? status;
  final String? date;
  final String? label;
  final Function()? functionClear;

  ChartMonitoringScreen(
      {this.values,
      this.label,
      this.functionClear,
      this.hint,
      this.status,
      this.date,
      this.onChange,
      this.rate,
      this.nameOfScreen,
      this.typeRate});

  final List<Color> colors = [
    Color(0xFF65E0E5),
    Color(0xFFF2AC57),
    Color(0xFF7C9AFC),
  ];

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
              label: nameOfScreen!,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label!,
                        style:
                            TextStyle(color: Color(0xFF3B3C55), fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldSearchRate(label: hint!, function: onChange),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 200,
                        child: ChartsExample(
                          values: values,
                        ),
                      ),
                      ListView.builder(
                          itemCount: colors.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (ctx, index) => DetailsRate(
                                colors: colors[index],
                                function: functionClear,
                                status: status![index],
                                date: date!,
                                rate: rate![index],
                                typeRate: typeRate,
                              ))
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
