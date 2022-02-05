import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContainerOfHealthInterest extends StatelessWidget {
  final String? image;
  final String? name;
  final String? description;
  final String? time;
  final Function()? shareFunction;
  final Function()? StarFunction;
  final Function()? moreFunction;

  ContainerOfHealthInterest(
      {this.image,
      this.name,
      this.description,
      this.time,
      this.moreFunction,
      this.shareFunction,
      this.StarFunction});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 240,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: size.width,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Image.asset(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: AutoSizeText(
                  name!,
                  maxLines: 1,
                  style: TextStyle(
                    color: Color(0xFF3B3B3B),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: AutoSizeText(
                  description!,
                  maxLines: 3,
                  style: TextStyle(fontSize: 14, color: Color(0xFFA8A8A8)),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: moreFunction,
                        icon: Icon(
                          Icons.more_vert,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: shareFunction,
                        icon: Icon(
                          Icons.share,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: StarFunction,
                        icon: Icon(
                          Icons.star_border,
                          color: Colors.black,
                          size: 20,
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, right: 5),
                        child: AutoSizeText(
                          time!,
                          maxLines: 1,
                          style: TextStyle(
                            color: Color(0xFF3B3B3B),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
