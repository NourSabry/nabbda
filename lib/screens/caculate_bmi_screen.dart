import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';

class CalculateBmiScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppbarWithLabelAndIcon(function: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
