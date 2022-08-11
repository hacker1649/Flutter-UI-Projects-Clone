import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function callback;
  final String text;
  final Color buttoncolor;
  final Color textcolor;
  const Buttons({required this.text,required this.buttoncolor,required this.textcolor,required this.callback});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttoncolor,
          elevation: 10.0,
          padding: const EdgeInsets.all(25.0),
          shadowColor: Colors.black,
          shape: const CircleBorder(),
        ),
        onPressed: () => {
          callback(text),
        },
        child: Text(text,
          style: TextStyle(
            color: textcolor,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}


