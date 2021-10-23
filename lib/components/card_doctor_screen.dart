import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Material(
        elevation: 1,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              color: K.WhiteColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: K.mainColor),
                          child: Image.asset(
                            image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                rate!,
                                style: TextStyle(color: K.grayColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 250,
                          child: AutoSizeText(
                            name!,
                            maxLines: 1,
                            style: TextStyle(fontSize: 22, color: K.blackColor),
                          ),
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
                              child: AutoSizeText(
                                description!,
                                maxLines: 5,
                                style:
                                    TextStyle(fontSize: 15, color: K.grayColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          AutoSizeText(
                            vote!,
                            maxLines: 1,
                            style: TextStyle(color: K.grayColor, fontSize: 15),
                          ),
                          AutoSizeText(
                            "Vote",
                            maxLines: 1,
                            style: TextStyle(color: K.grayColor, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: K.mainColor,
                          ),
                          Expanded(
                            child: AutoSizeText(
                              job!,
                              maxLines: 1,
                              style:
                                  TextStyle(color: K.grayColor, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: K.mainColor,
                          ),
                          Expanded(
                            child: AutoSizeText(
                              location!,
                              maxLines: 1,
                              style:
                                  TextStyle(color: K.grayColor, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    AutoSizeText(
                      feedback!,
                      style: TextStyle(color: K.blackColor, fontSize: 18),
                    ),
                    AutoSizeText(
                      "Feedback",
                      style: TextStyle(color: K.blackColor, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          AutoSizeText(
                            "Checkup Price:",
                            maxLines: 1,
                            style: TextStyle(color: K.mainColor, fontSize: 10),
                          ),
                          Expanded(
                            child: AutoSizeText(
                              price!,
                              maxLines: 1,
                              style: TextStyle(
                                  color: K.blackColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            AutoSizeText(
                              "WaitingTime:",
                              maxLines: 1,
                              style:
                                  TextStyle(color: K.mainColor, fontSize: 10),
                            ),
                            Expanded(
                              child: AutoSizeText(
                                time!,
                                maxLines: 1,
                                style: TextStyle(
                                    color: K.blackColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          AutoSizeText(
                            "Contact:",
                            maxLines: 1,
                            style: TextStyle(color: K.mainColor, fontSize: 10),
                          ),
                          Expanded(
                            child: AutoSizeText(
                              phoneNumber!,
                              maxLines: 1,
                              style: TextStyle(
                                  color: K.blackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: TextButton(
                      onPressed: function,
                      child: Text(
                        "Book an Appointment",
                        style: TextStyle(
                          color: K.WhiteColor,
                          fontSize: 18,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: K.mainColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
