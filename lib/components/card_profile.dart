import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/rate_row.dart';

class CardOfProfile extends StatelessWidget {
  final String? image;
  final String? label;
  final String? descriptions;
  final String? rate;

  CardOfProfile({this.image, this.label, this.descriptions, this.rate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        width: 200,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              top: 50,
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 180,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          label!,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        AutoSizeText(
                          descriptions!,
                          maxLines: 2,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        RateRow(
                          rate: rate,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ), //Container

            Container(
              clipBehavior: Clip.antiAlias,
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
            ),
            //Container
          ], //<Widget>[]
        ), //Center
      ), //SizedBox
    );
  }
}
