import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:bmicalculatorapp/BMI Calculator/calculator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds:5),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> const BMICalculator())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SpinKitPouringHourGlassRefined(
              color: Colors.cyanAccent,
              size: 40.0,
              duration: Duration(milliseconds: 500),
            ),
            const SizedBox(height: 70.0,),
            Container(
              width: 120,
              height: 120,
              child: const Image(image: AssetImage('assets/dogs.jpg'),),
            )
          ],
        ),
      ),
    );
  }
}



