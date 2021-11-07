import 'package:flutter/material.dart';
import 'package:nabbda/components/container_health_interest.dart';
import 'package:nabbda/components/textfield_search.dart';

class HealthInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFieldSearch(
                    function: (v) {
                      print(v);
                    },
                    hint: "Search in Health Interest",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 20,
                        ),
                        Text(
                          "Favourite",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/Male.png",
                      fit: BoxFit.cover,
                    ),
                  ))
                ],
              ),
            ),
            ListView.builder(
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
                    ))
          ],
        ),
      ),
    );
  }
}
