import 'package:flutter/material.dart';
import 'package:whatsappui/Home/whatsapp.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo BMI Calculator App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(20, 30, 20, 1),
        scaffoldBackgroundColor: const Color.fromRGBO(20, 25, 20, 0.5),
      ),
      home: const MyHomePage(),
    );
  }
}


