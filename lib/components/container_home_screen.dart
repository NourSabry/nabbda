import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/textfield_search.dart';
import 'package:nabbda/constants.dart';

class ContainerOfHomeScreen extends StatelessWidget {
  final Function()? functionShare;
  final Function(String)? onChange;

  ContainerOfHomeScreen({this.functionShare, this.onChange});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 180,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 180,
            width: size.width,
            decoration: BoxDecoration(
                color: K.mainColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NABBDA",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: CustomizedColors.txtF)),
                      Row(
                        children: [
                          SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                "assets/images/wave.png",
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: functionShare,
                            child: Icon(Icons.share,
                                size: 30, color: CustomizedColors.txtF),
                          ),
                        ],
                      )
                    ],
                  ),
                  AutoSizeText(
                      "Track Your Health Reports\nAnd Get Reminders For your Medications, Stay Healthy!",
                      maxLines: 3,
                      style: TextStyle(
                          color: CustomizedColors.txtF,
                          fontSize: 16,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 35,
                child: TextFieldSearch(
                  function: onChange!,
                  hint: "Search in your reports",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
