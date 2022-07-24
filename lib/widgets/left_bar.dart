// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;

  const LeftBar({Key? key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 20,
          width: barWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
             topLeft: Radius.circular(20),
             bottomLeft: Radius.circular(20),
            ),
            color: Colors.purple[700]),
        ),

      ],
    );
  }
}