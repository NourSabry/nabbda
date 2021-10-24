import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nabbda/constants.dart';

class ContainerDetails extends StatelessWidget {
  final String? priceVideo;
  final Function()? bookVideo;
  final String? timeOpen;
  final String? priceClinic;
  final Function()? bookClinic;
  final String? timeClosed;
  final String? location;
  final String? distance;
  final Function()? giveFeedback;
  final Function()? book;
  final List<String>? services;
  final List<String>? specialization;

  ContainerDetails(
      {this.location,
      this.book,
      this.bookClinic,
      this.bookVideo,
      this.distance,
      this.giveFeedback,
      this.priceClinic,
      this.priceVideo,
      this.services,
      this.specialization,
      this.timeClosed,
      this.timeOpen});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Completer<GoogleMapController> _controller = Completer();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            color: K.WhiteColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'video consultation Fees:',
                      style: TextStyle(color: K.grayColor, fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                            text: priceVideo!,
                            style: TextStyle(color: K.blackColor)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 35,
                    child: TextButton(
                      onPressed: bookVideo,
                      child: Text(
                        "Book",
                        style: TextStyle(color: K.mainColor, fontSize: 18),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: K.mainColor))),
                    ),
                  )
                ],
              ),
              Divider(
                color: K.grayColor,
                endIndent: 5,
                indent: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open today",
                    style: TextStyle(color: Color(0xFF46E54C), fontSize: 15),
                  ),
                  AutoSizeText(
                    timeOpen!,
                    style: TextStyle(color: K.blackColor, fontSize: 15),
                  ),
                  Text(
                    "All Timing",
                    style: TextStyle(
                        color: K.mainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(
                color: K.grayColor,
                indent: 5,
                endIndent: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'In Clinic Fees:',
                      style: TextStyle(color: K.grayColor, fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                            text: priceClinic!,
                            style: TextStyle(color: K.blackColor)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 35,
                    child: TextButton(
                      onPressed: bookClinic,
                      child: Text(
                        "Book",
                        style: TextStyle(color: K.mainColor, fontSize: 18),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: K.mainColor))),
                    ),
                  )
                ],
              ),
              Divider(
                color: K.grayColor,
                indent: 5,
                endIndent: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Closed today",
                    style: TextStyle(color: Color(0xFFFF4D4D), fontSize: 15),
                  ),
                  AutoSizeText(
                    timeClosed!,
                    style: TextStyle(color: K.blackColor, fontSize: 15),
                  ),
                  Text(
                    "All Timing",
                    style: TextStyle(
                        color: K.mainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(
                color: K.grayColor,
                indent: 5,
                endIndent: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.location_on,
                    color: K.mainColor,
                  ),
                  RichText(
                    text: TextSpan(
                      text: location!,
                      style: TextStyle(color: K.grayColor, fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                            text: distance!,
                            style: TextStyle(color: K.grayColor)),
                        TextSpan(
                            text:"KM",
                            style: TextStyle(color: K.grayColor)),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 150,
                  clipBehavior: Clip.antiAlias,
                  width: size.width,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: GoogleMap(
                    mapType: MapType.normal,
                    scrollGesturesEnabled: true,
                    zoomGesturesEnabled: true,
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(30.064687, 31.240134),
                      zoom: 10.4746,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
              ),
              Divider(
                color: K.grayColor,
                indent: 5,
                endIndent: 5,
              ),
              Text(
                "FEEDBACK",
                style: TextStyle(color: K.grayColor, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  "Very good and efficient staff",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                ),
              ),
              Container(
                height: 50,
                width: size.width,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: K.grayColor)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: giveFeedback,
                          child: Text(
                            "Give Feedback",
                            style: TextStyle(color: K.blackColor, fontSize: 18),
                          )),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: book,
                        child: Text(
                          "Book",
                          style: TextStyle(color: K.WhiteColor, fontSize: 18),
                        ),
                        style: TextButton.styleFrom(
                            fixedSize: Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: K.mainColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "SERVICES",
                style: TextStyle(color: K.grayColor, fontSize: 18),
              ),
              Container(
                child: ListView.builder(
                    itemCount: services!.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: AutoSizeText(
                            services![index],
                            maxLines: 1,
                            style: TextStyle(color: K.blackColor, fontSize: 18),
                          ),
                        )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  " ALL SERVICES",
                  style: TextStyle(
                      color: K.mainColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: K.grayColor,
                indent: 5,
                endIndent: 5,
              ),
              Text(
                "SPECIALIZATION",
                style: TextStyle(color: K.grayColor, fontSize: 18),
              ),
              SizedBox(
                child: ListView.builder(
                    itemCount: specialization!.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: AutoSizeText(
                            specialization![index],
                            maxLines: 1,
                            style: TextStyle(color: K.blackColor, fontSize: 18),
                          ),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
