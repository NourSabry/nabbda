import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    "assets/images/Heart.png",
                    fit: BoxFit.cover,
                  )),
              SvgPicture.asset(
                "assets/images/pules.svg",
                fit: BoxFit.cover,
              ),
            ],
          ),
          Text("NABBDA", style: Style.textStyleSplashScreen),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
              width: double.infinity,
              child: SvgPicture.asset(
                "assets/images/p.svg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
