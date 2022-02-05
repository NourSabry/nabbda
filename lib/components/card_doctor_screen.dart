import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/book_button_appointment.dart';
import 'package:nabbda/components/const_rich_text.dart';
import 'package:nabbda/components/const_value_doctor_screen.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/components/rate_row.dart';
import 'package:nabbda/components/text_value_doctor_screen.dart';
import 'package:nabbda/constants.dart';

class CardOfDoctorScreen extends StatelessWidget {
  final String? image;
  final String? name;
  final String? description;
  final String? rate;
  final String? vote;
  final String? job;
  final String? location;
  final String? feedback;
  final String? price;
  final String? time;
  final String? phoneNumber;
  final Function()? function;

  CardOfDoctorScreen(
      {this.name,
      this.function,
      this.image,
      this.time,
      this.rate,
      this.description,
      this.phoneNumber,
      this.price,
      this.feedback,
      this.job,
      this.location,
      this.vote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      ImageProfile(
                        image: image!,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: RateRow(
                            rate: rate,
                          ))
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: AutoSizeText(name!,
                          maxLines: 1, style: Style.textStyleName),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        height: 80,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: K.grayColor.shade200),
                            color: K.WhiteColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: AutoSizeText(description!,
                              maxLines: 5, style: Style.textStyleDescription),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstRichText(
                    leftText: vote!,
                    rightText: "Vote",
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: SvgPicture.asset(
                          "assets/images/person.svg",
                          fit: BoxFit.cover,
                          width: 17,
                          height: 17,
                        ),
                      ),
                      AutoSizeText(
                        job!,
                        maxLines: 1,
                        style: TextStyle(color: K.grayColor, fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: K.mainColor,
                      ),
                      AutoSizeText(
                        location!,
                        maxLines: 1,
                        style: TextStyle(color: K.grayColor, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstRichText(
                      leftText: feedback!,
                      rightText: "Feedback",
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            ConstTextValue(
                              label: "Checkup Price:",
                            ),
                            TextDetails(
                              label: price,
                            ),
                          ],
                        ),
                        ConstTextValue(
                          label: "WaitingTime:",
                        ),
                        TextDetails(
                          label: time,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      ConstTextValue(
                        label: "Contact:",
                      ),
                      TextDetails(
                        label: phoneNumber,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15),
                child: BookButtonAppointment(
                  function: function,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
