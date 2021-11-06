import 'package:flutter/material.dart';
import 'package:nabbda/PaymentSent.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/OurTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class PayemntMethods extends StatefulWidget {
  @override
  _PayemntMethods createState() => _PayemntMethods();
}

class _PayemntMethods extends State<PayemntMethods> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
        Title: "Payment Methods",
        myIcon: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 450,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("How would you like to pay for service ?",
                          style: TextStyle(
                              color: Color(0xFF313450),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(height: 20),
                    Row(children: [
                      Image.asset("assets/images/Bank1.png"),
                      Image.asset("assets/images/Bank2.png"),
                      Image.asset("assets/images/Bank3.png"),
                    ]),
                    SizedBox(height: 40),
                    OurTextField(hint: "Name on Card"),
                    SizedBox(height: 10),
                    OurTextField(hint: "Card Number"),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 155,
                          height: 45,
                          child: OurTextField(hint: "Expiry Date"),
                        ),
                        SizedBox(width: 30),
                        SizedBox(
                          width: 155,
                          height: 45,
                          child: OurTextField(hint: "CVV"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          shape: CircleBorder(),
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          activeColor: Colors.blue[700],
                        ),
                        Text(
                          "Save this card details",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    NabbdaButton(
                      Name: "Pay",
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PayemntSent()));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
