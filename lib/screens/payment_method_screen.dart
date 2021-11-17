import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/payment_method_controller.dart';
import 'package:nabbda/screens/checkout_screen.dart';

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(PaymentMethodController());
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Theme(
            data: ThemeData(unselectedWidgetColor: K.mainColor),
            child: Stack(
              children: [
                AppbarWithLabelAndIcon(
                  function: () {
                    Get.back();
                  },
                  label: "Payment Methods",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
                  child: Material(
                    color: K.WhiteColor,
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                "How would you like to pay for service ?",
                                style: TextStyle(
                                    color: Color(0xFF313450),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/PayPal.png"),
                                Image.asset("assets/images/CreditCard.png"),
                                Image.asset("assets/images/SavedCard.png"),
                              ]),
                          SizedBox(height: 40),
                          TextFieldInput(
                            function: (v) {},
                            hint: "Name on Card",
                          ),
                          SizedBox(height: 10),
                          TextFieldInput(
                            function: (v) {},
                            hint: "Card Number",
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 80,
                                  child: TextFieldInput(
                                    function: (v) {},
                                    hint: "Expiry Date",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 80,
                                  child: TextFieldInput(
                                    function: (v) {},
                                    hint: "CVV",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Obx(() => Checkbox(
                                    shape: CircleBorder(),
                                    checkColor: Colors.white,
                                    value: _controller.check.value,
                                    onChanged: (bool? value) {
                                      _controller.check.value = value!;
                                    },
                                    activeColor: Colors.blue[700],
                                  )),
                              Text(
                                "Save this card details",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          RegisterButton(
                            label: "Pay",
                            function: () {
                              Get.to(() => PaymentSent());
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
