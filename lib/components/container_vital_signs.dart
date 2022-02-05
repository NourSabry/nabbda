import 'package:auto_size_text/auto_size_text.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerOfVitalSigns extends StatelessWidget {
  final String? images;
  final String? name;
  final String? time;
  final String? quantity;

  ContainerOfVitalSigns({this.time, this.name, this.images, this.quantity});

  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: 40,
              height: 40,
              child: Center(
                child: SvgPicture.asset(
                  images!,
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF3D8BFF), shape: BoxShape.circle),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  name!,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF404D66)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: AutoSizeText(
                    time!,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8193AE),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 80,
              height: 50,
              child: Sparkline(
                data: data,
                useCubicSmoothing: true,
                cubicSmoothingFactor: 0.2,
                lineColor: Colors.grey,
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: AutoSizeText(
              quantity!,
              style: TextStyle(fontSize: 14, color: Color(0xFF3B3C55)),
            ),
          ),
        ],
      ),
    );
  }
}
