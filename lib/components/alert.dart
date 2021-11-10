import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

final List<String> labels = [
  'Consultation Fee',
  'The Highest rate',
  'The Lowest Price',
  'The Highest Price',
  'The Lowest Waiting Time'
];
final List<String> labelsAvailability = [
  'Available Any Day',
  'Available Today',
  'Available in next 3 days',
  'Available coming weekend',
];
final List<String> labelsJobs = [
  'Junior',
  'Senior',
  'Specialist',
  'Expert',
];
final List<String> labelsSalary = [
  'Free',
  '1-200',
  '201-500',
  '500-1000',
];
final List<String> labelsGender = [
  'Male',
  'Female',
];

showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        content: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              "Apply",
                              style:
                                  TextStyle(fontSize: 18, color: K.WhiteColor),
                            ),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: K.mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
