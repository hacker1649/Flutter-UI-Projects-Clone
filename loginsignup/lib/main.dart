import 'package:flutter/material.dart';
import 'package:loginsignup/Home/home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Login/Sign-Up/Reset Page',
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: const Color.fromRGBO(10,10,200,0.3),
      ),
      home: const MyHomePage(),
    );
  }
}


