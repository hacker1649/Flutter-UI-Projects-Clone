import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String text;
  const Question(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10.0, 40.0,10.0, 35.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Comfortaa',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}


