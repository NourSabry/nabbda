import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/constants.dart';

class ContainerProfile extends StatelessWidget {
  final String? imageProfile;
  final String? rate;
  final String? feedback;
  final String? name;
  final String? description;
  final String? job;
  final String? vote;
  final String? images;

  ContainerProfile(
      {this.feedback,
      this.job,
      this.vote,
      this.description,
      this.name,
      this.rate,
      this.images,
      this.imageProfile});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 430,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          AppbarWithLabelAndIcon(
            label: "",
            function: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 10, right: 10),
            child: Material(
              color: K.WhiteColor,
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              rate!,
                              style:
                                  TextStyle(color: K.grayColor, fontSize: 18),
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            text: feedback!,
                            style: TextStyle(color: K.grayColor, fontSize: 15),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: " FEEDBACK",
                                  style: TextStyle(color: K.blackColor)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  AutoSizeText(
                    name!,
                    maxLines: 1,
                    style: TextStyle(fontSize: 20, color: K.blackColor),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: AutoSizeText(
                      description!,
                      maxLines: 3,
                      style: TextStyle(fontSize: 16, color: K.grayColor),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SvgPicture.asset(
                                "assets/images/person.svg",
                                fit: BoxFit.cover,
                                width: 17,
                                height: 17,
                              ),
                            ),
                            AutoSizeText(
                              job!,
                              style:
                                  TextStyle(color: K.grayColor, fontSize: 18),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            AutoSizeText(
                              vote!,
                              style:
                                  TextStyle(color: K.blackColor, fontSize: 18),
                            ),
                            AutoSizeText(
                              "(votes)",
                              style:
                                  TextStyle(color: K.grayColor, fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 80,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: K.mainColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.asset(
                                  images!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 80,
              child: ImageProfile(
                image: imageProfile!,
              )),
        ],
      ),
    );
  }
}
