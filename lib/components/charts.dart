import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ChartsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
          ),
        ),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: SideTitles(
            showTitles: true,
            reservedSize: 22,
            margin: 10,
            interval: 1,
            getTextStyles: (context, value) => const TextStyle(
              color: Color(0xff72719b),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'SUN';
                case 3:
                  return 'MON';
                case 5:
                  return 'TUE';
                case 7:
                  return 'WED';
                case 9:
                  return 'THU';
                case 11:
                  return 'FRI';
                case 13:
                  return 'SAT';
              }
              return '';
            },
          ),
          rightTitles: SideTitles(showTitles: false),
          topTitles: SideTitles(showTitles: false),
          leftTitles: SideTitles(
            showTitles: true,
            margin: 8,
            interval: 1,
            reservedSize: 40,
            getTextStyles: (context, value) => const TextStyle(
              color: Color(0xff75729e),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            getTitles: (value) {
              switch (value.toInt()) {
                case 0:
                  return '0';
                case 1:
                  return '5';
                case 2:
                  return '10';
                case 3:
                  return '15';
                case 4:
                  return '20';
              }
              return '';
            },
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: const Border(
            bottom: BorderSide(color: K.grayColor, width: 1),
            left: BorderSide(color: K.grayColor, width: 1),
            right: BorderSide(color: Colors.transparent),
            top: BorderSide(color: Colors.transparent),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            colors: const [Color(0xff27b6fc)],
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: const [
              FlSpot(1, 2.8),
              FlSpot(3, 1.9),
              FlSpot(6, 3),
              FlSpot(10, 1.3),
              FlSpot(13, 2.5),
            ],
          )
        ],
        minX: 0,
        maxX: 15,
        maxY: 4,
        minY: 0,
      ),
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }
}
