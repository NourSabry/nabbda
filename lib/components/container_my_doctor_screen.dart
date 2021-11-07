import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/constants.dart';

class ContainerOfMyDoctorScreen extends StatelessWidget {
  final String? name;
  final String? image;
  final String? description;
  final String? job;
  final String? time;
  final String? status;
  final Function()? functionVideoCall;

  ContainerOfMyDoctorScreen(
      {this.time,
      this.description,
      this.name,
      this.image,
      this.functionVideoCall,
      this.job,
      this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        color: K.WhiteColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ImageProfile(
                    image: image!,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        AutoSizeText(
                          name!,
                          maxLines: 1,
                          style: TextStyle(color: K.blackColor, fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: K.grayColor.shade400),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText(
                                  description!,
                                  maxLines: 3,
                                  style: TextStyle(
                                      color: K.grayColor, fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/person.svg",
                                      fit: BoxFit.cover,
                                      width: 17,
                                      height: 17,
                                    ),
                                    AutoSizeText(
                                      job!,
                                      style: TextStyle(
                                          color: K.grayColor, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    status!,
                    style: TextStyle(color: Color(0xFFFF4D4D), fontSize: 15),
                  ),
                  AutoSizeText(
                    time!,
                    style: TextStyle(color: K.blackColor, fontSize: 15),
                  ),
                  IconButton(
                      onPressed: functionVideoCall,
                      icon: Icon(
                        Icons.video_call,
                        color: K.mainColor,
                        size: 30,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
