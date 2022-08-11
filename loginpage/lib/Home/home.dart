import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loginpage/Login Page/loginpage.dart';

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
      const Duration(seconds:5),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> const LoginPage())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10,
        body: Center(
          child: SpinKitRotatingCircle(
            color: Colors.white,
            size: 40.0,
            duration: Duration(milliseconds: 1000),
          ),
        ),
      ),
    );
  }
}



