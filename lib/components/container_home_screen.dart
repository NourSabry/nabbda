import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/textfield_search.dart';
import 'package:nabbda/constants.dart';

class ContainerOfHomeScreen extends StatelessWidget {
  final Function()? functionShare;
  final Function(String)? onChange;

  ContainerOfHomeScreen({this.functionShare, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: K.mainColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NABBDA", style: Style.textStyleHomeText),
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
                                size: 30, color: K.WhiteColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                AutoSizeText(
                    "Track Your Health Reports And Get Reminders\n For your Medications, Stay Healthy!",
                    maxLines: 3,
                    style: Style.textStyleHomeText)
              ],
            ),
          ),
          Positioned(
            bottom: 5,
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
