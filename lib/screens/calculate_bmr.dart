import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/constants.dart';

class CalculateBmrScreen extends StatelessWidget {
  final List<String> labels = [
    "You need 1844 calories / day to lose 0.5 kg every week",
    "You need 1844 calories / day to lose 0.5 kg every week",
    "You need 1344 calories / day to lose 1 kg every week",
    "You need 1344 calories / day to lose 1 kg every week"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              label: "Calories Calculator (BMR)",
              function: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Your daily calorie needs are\n2,344 calories",
                        style: Style.textStyleBmiScreen,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: RegisterButton(
                        function: () {},
                        label: "Calculate again",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Personal measurement results:",
                          style: Style.textStyleCalculatorBmiText,
                        ),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: labels.length,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (ctx, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  AutoSizeText(
                                    labels[index],
                                    style: Style.textStyleBmiText,
                                  ),
                                  Divider(
                                    indent: 20,
                                    endIndent: 20,
                                  ),
                                ],
                              ),
                            ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
