import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ContainerOfProfile extends StatelessWidget {
  final String? image;
  final String? name;
  final String? phone;
  final String? percentText;
  final double? percent;
  final Function()? functionComplete;

  ContainerOfProfile(
      {this.name,
      this.image,
      this.percent,
      this.phone,
      this.percentText,
      this.functionComplete});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: K.mainColor,
      borderRadius: BorderRadius.circular(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: ImageProfile(
                image: image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: AutoSizeText(
                name!,
                maxLines: 1,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Center(
            child: AutoSizeText(
              phone!,
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          SizedBox(height: 10),
          Center(
              child: Text(
            percentText!,
            style: Style.textStylePhoneText,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              width: 250,
              animation: true,
              lineHeight: 4,
              backgroundColor: Color(0xFF4066FF),
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
                  onPressed: functionComplete,
                  child: Text(
                    "Complete Your Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white, width: 0.3))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
