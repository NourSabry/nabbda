import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ContainerOfProfile extends StatelessWidget {
  final String? image;
  final String? name;
  final String? phone;
  final String? percentText;
  final double? percent;
  final Function()? functionSetting;

  ContainerOfProfile(
      {this.name,
      this.image,
      this.percent,
      this.phone,
      this.percentText,
      this.functionSetting});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 350,
      decoration: BoxDecoration(
          color: Color(0xFF6E78F7), borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: IconButton(
              onPressed: functionSetting,
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Image.asset(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: AutoSizeText(
                name!,
                maxLines: 1,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Center(
            child: AutoSizeText(
              phone!,
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          Center(
              child: Text(
            percentText!,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              width: MediaQuery.of(context).size.width - 100,
              animation: true,
              lineHeight: 5,
              backgroundColor: Color(0xFF4066FF),
              animationDuration: 2000,
              percent: percent!,
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: SizedBox(
                width: 250,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Complete Your Profile",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
