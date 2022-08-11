import 'package:flutter/material.dart';
import 'package:simpledrawerui/Home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BackDrop Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: const Color.fromRGBO(20, 20, 20, 1),
      ),
      home: const MyHomePage(),
    );
  }
}



