// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'dart:ui';

import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:bmi_calculator/widgets/left_bar.dart';
import 'package:bmi_calculator/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
 HomeScreen({Key? key}) : super(key: key);

  @override
  State <HomeScreen> createState() => _HomeScreenState();
}

class  _HomeScreenState extends State <HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult=0;
  String _textResult="";
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w800),
        ),
       // backgroundColor: Colors.transparent,
        backgroundColor: Colors.purple[700],
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.purple[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                 Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
           GestureDetector(
              onTap: (){
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h);
                  if(_bmiResult > 25){
                    _textResult = "You\'re over weight";
                  }else if(_bmiResult >= 18.5 && _bmiResult <= 25){
                    _textResult = "You have normal weight"; 
                  }else{
                    _textResult = "You\'re under weight";
                  }
                });
              },
            child: Container(
               child: Text("Calculate",style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.purple),),
            ),
          ),
            SizedBox(height: 50,),
            Container(
               child: Text(_bmiResult.toStringAsFixed(2),style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            SizedBox(height: 30,),
           Visibility(
             visible: _textResult.isNotEmpty,
             child:Container(
               child: Text(_textResult,style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.purple[700]),),
            ) ),
            
            SizedBox(height: 10,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 20,),
            LeftBar(barWidth: 70,),
            SizedBox(height: 20,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 20,),
            RightBar(barWidth: 40,),
            SizedBox(height: 30,),
            RightBar(barWidth: 40,),
          ],
        ), 
        )
    );
  }
}