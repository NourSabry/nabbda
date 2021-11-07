import 'package:flutter/material.dart';
import 'package:nabbda/components/button_feedback.dart';
import 'package:nabbda/components/description_booking_doctor.dart';
import 'package:nabbda/components/details_booking_time.dart';
import 'package:nabbda/components/details_other_select_time.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';

class ContainerDetailsSelectTime extends StatelessWidget {
  final String? time;
  final String? price;
  final String? dropdownValue;
  final Function()? function;
  final bool? check;
  final Function()? functionBook;
  final Function()? functionGiveFeedback;
  final Function(String)? functionName;
  final Function(String)? functionPhone;
  final Function(String)? functionAccount;
  final Widget? widget;

  ContainerDetailsSelectTime(
      {this.price,
      this.widget,
      this.time,
      this.dropdownValue,
      this.function,
      this.check,
      this.functionBook,
      this.functionAccount,
      this.functionName,
      this.functionPhone,
      this.functionGiveFeedback});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      color: K.WhiteColor,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorDescription(
                name: "DR. Mohamed Saeed Al Gamal",
                description:
                    "Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Catheterization Al-Azhar University",
                image: "assets/images/Male.png",
              ),
            ),
            Divider(
              endIndent: 5,
              indent: 5,
              color: K.grayColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DetailsBookingTime(
                time: time!,
                price: price!,
              ),
            ),
            Divider(
              endIndent: 5,
              indent: 5,
              color: K.grayColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: K.grayColor.shade400)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        dropdownValue!,
                        style: TextStyle(color: K.blackColor, fontSize: 16),
                      ),
                    ),
                    IconButton(
                        onPressed: function, icon: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
            ),
            TextFieldInput(
              function: functionName!,
              hint: "Ahmed Abbas",
            ),
            TextFieldInput(
              function: functionAccount!,
              hint: "info@gmail.com",
            ),
            TextFieldInput(
              function: functionPhone!,
              hint: "+201022355169",
            ),
            SizedBox(
              height: 20,
            ),
            check! ? DetailsOfOther(widget: widget!,) : Container(),
            check!
                ? Container()
                : RichText(
                    text: TextSpan(
                      text: "By booking this appointment you agree to the",
                      style: TextStyle(color: K.grayColor, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                            text: "T&C",
                            style: TextStyle(color: Color(0xFF3CB9C7))),
                      ],
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: ButtonFeedback(
                  book: functionBook!, giveFeedback: functionGiveFeedback!),
            ),
          ],
        ),
      ),
    );
  }
}
