import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cards extends StatelessWidget {
  final String? label;
  final String? images;
  final String? imageWave;
  final String? percent;
  final Function()? function;

  Cards({this.label, this.images, this.imageWave, this.percent, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset(
                    images!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    label!,
                    maxLines: 2,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      imageWave!,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        percent!,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
