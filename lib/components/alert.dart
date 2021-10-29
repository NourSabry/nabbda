import 'package:flutter/material.dart';
import 'package:nabbda/components/container_alert_dialog.dart';
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
        return SingleChildScrollView(
          child: AlertDialog(
            contentPadding: EdgeInsets.all(0),
            insetPadding: EdgeInsets.symmetric(horizontal: 20),
            backgroundColor: Colors.transparent,
            clipBehavior: Clip.antiAlias,
            content: Container(
              width: double.maxFinite,
              child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: <Widget>[
                    ContainerOfAlertDialog(

                      height: 300,
                      name: "Sort By",
                      labels: labels,

                    ),
                    Container(
                      height: 300,
                      child: Stack(
                        children: [
                          ContainerOfAlertDialog(
                            height: 270,
                            name: "Availability",
                            labels: labelsAvailability,
                          ),
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
                                    style: TextStyle(
                                        fontSize: 18, color: K.WhiteColor),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: K.mainColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ContainerOfAlertDialog(
                      height: 100,
                      name: "In Hospital",
                      labels: ['In Hospital'],
                    ),
                    ContainerOfAlertDialog(
                      height: 250,
                      name: "Doctor Title",
                      labels: labelsJobs,
                    ),
                    ContainerOfAlertDialog(
                      height: 250,
                      name: " ",
                      labels: labelsSalary,
                    ),
                    ContainerOfAlertDialog(
                      height: 150,
                      name: "Gender",
                      labels: labelsGender,
                    ),
                  ]),
            ),
          ),
        );
      });
}
