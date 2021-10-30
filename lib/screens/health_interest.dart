import 'package:flutter/material.dart';
import 'package:nabbda/components/container_health_interest.dart';
import 'package:nabbda/components/textfield_search.dart';

class HealthInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
                            size: 25,
                          ),
                          Text(
                            "Favourite",
                            style: TextStyle(fontSize: 12, color: Colors.black),
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
                        "assets/images/heart.png",
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
                            "HeartHeartHeartHeartHeartHeartHeartHeartHeartHeartHeartHeartHeartHeartHeartHeart Fat",
                        name: "Heart Fat",
                        time: "12 Hours Ago nabbda.com",
                        moreFunction: () {},
                        shareFunction: () {},
                        StarFunction: () {},
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
