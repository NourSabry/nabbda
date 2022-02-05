import 'package:flutter/material.dart';
import 'package:nabbda/components/container_health_interest.dart';
import 'package:nabbda/components/textfield_search.dart';
import 'package:nabbda/constants.dart';

class HealthInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        title: TextFieldSearch(
          function: (v) {
            print(v);
          },
          hint: "Search in Health Interest",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 20,
                        color: K.grayColor,
                      ),
                      Text(
                        "Favourite",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFF707070)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    "assets/images/Male.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, Index) => ContainerOfHealthInterest(
                image: "assets/images/patient.jpg",
                description:
                    "It is considered wrong to use the term “good fats” and “bad fats”, according to the word ofDrJessicaBennett,an American nutritionist, because of the person’spsychological condition, which leadshim to continue eating fats when their use coincides withthe word “good.” It is better touse the term healthy fats and unhealthy or less healthyfats.",
                name: "Heart Fat",
                time: "12 Hours Ago nabbda.com",
                moreFunction: () {},
                shareFunction: () {},
                StarFunction: () {},
              )),
    );
  }
}
