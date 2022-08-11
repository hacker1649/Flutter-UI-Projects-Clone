import 'dart:async';
import 'package:flutter/material.dart';
import 'package:simpledrawerui/Pages/home.dart';
import 'package:slimy_card/slimy_card.dart';
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
      const Duration(seconds:10),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> const Home())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 93.0,),
            SlimyCard(
              width: 300,
              borderRadius: 30,
              color: Colors.black,
              topCardHeight: 280,
              bottomCardHeight: 130,
              topCardWidget: buildTopCardWidget(),
              bottomCardWidget: buildBottomCardWidget(),
            ),
          ],
        )
      ),
    );
  }
  Widget buildTopCardWidget(){
    return Column(
      children: [
        Center(
          child: Lottie.asset('assets/welcome1.json',
            width: 150.0,
            height: 150.0,
          ),
        ),
        const Text('Welcome Back',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'PT Sans',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0,),
        const Text('Please click this Dropdown menu',
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'PT Sans',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget buildBottomCardWidget(){
    return const Text('Page is in loading process...',
      style: TextStyle(
        fontSize: 16.0,
        fontFamily: 'PT Sans',
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}




