import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 460,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
              height: 250,
              width: size.width,
              decoration: BoxDecoration(
                  color: K.mainColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: K.WhiteColor,
                  ),
                ),
              )),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    color: K.WhiteColor,
                    borderRadius: BorderRadius.circular(20)),
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
                              style:
                                  TextStyle(color: K.grayColor, fontSize: 15),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 5),
                      child: AutoSizeText(
                        description!,
                        maxLines: 3,
                        style: TextStyle(fontSize: 16, color: K.grayColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
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
                                style: TextStyle(
                                    color: K.blackColor, fontSize: 18),
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
          ),
          Positioned(
            top: 80,
            child: Container(
              height: 100,
              clipBehavior: Clip.antiAlias,
              width: 100,
              decoration:
                  BoxDecoration(color: K.WhiteColor, shape: BoxShape.circle),
              child: Image.asset(
                imageProfile!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
