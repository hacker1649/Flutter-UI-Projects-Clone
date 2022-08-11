import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loginsignup/Pages/login/login.dart';
import 'package:lottie/lottie.dart';

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
      const Duration(seconds:4),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> const LoginScreen())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset('assets/login-popup.json',
                width: 350.0,
                height: 350.0,
              ),
            ),
            const SpinKitCircle(
              color: Colors.white,
              size: 40.0,
              duration: Duration(milliseconds: 1000),
            ),
          ],
        )
      ),
    );
  }
}


