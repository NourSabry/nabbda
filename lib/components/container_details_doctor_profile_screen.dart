import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nabbda/components/book_button.dart';
import 'package:nabbda/components/button_feedback.dart';
import 'package:nabbda/components/const_rich_text.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Material(
        color: K.WhiteColor,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstRichText(
                    leftText: 'video consultation Fees : ',
                    rightText: priceVideo!,
                  ),
                  BookButton(
                    function: bookVideo,
                  ),
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
                  ConstRichText(
                    leftText: 'In Clinic Fees : ',
                    rightText: priceClinic!,
                  ),
                  BookButton(
                    function: bookClinic,
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
                children: [
                  Icon(
                    Icons.location_on,
                    color: K.mainColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ConstRichText(
                      leftText: location!,
                      rightText: "   ${distance!} KM",
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
              ButtonFeedback(
                giveFeedback: giveFeedback,
                book: book,
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
