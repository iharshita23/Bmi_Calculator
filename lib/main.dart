// ignore_for_file: invalid_language_version_override

import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/home.dart';
// @dart=2.9

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, //primarySwatch is not a Color. It's MaterialColor. Which means it's different shades of a color a material app will use.
         //primaryColor is one of those shades. To be exact, primaryColor is normally equal to primarySwatch[500].
        //It is usually better to define a primarySwatch instead of primaryColor. Because some material components may use a different shade of the primaryColor for things such as shadow, border
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(

      ),
    );
  }
}