import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class tryChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  tryChart({Key? key}) : super(key: key);

  @override
  _tryChart createState() => _tryChart();
}

class _tryChart extends State<tryChart> {
  List<_SalesData> data = [
    _SalesData('SUN', 35),
    _SalesData('MON', 28),
    _SalesData('TUE', 34),
    _SalesData('WED', 32),
    _SalesData('THU', 40),
    _SalesData('FRI', 0),
    _SalesData('SAT', 0)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(height: 50),
      //Initialize the chart widget
      SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          // Enable legend
          legend: Legend(isVisible: false),
          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: false),
          series: <ChartSeries<_SalesData, String>>[
            LineSeries<_SalesData, String>(
                dataSource: data,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Sales',
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true))
          ]),
    ]));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
