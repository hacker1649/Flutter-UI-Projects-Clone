import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answertext;
  final VoidCallback selectHandler;
  const Answer({required this.selectHandler,required this.answertext});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          elevation: 10.0,
          shadowColor: Colors.white,
          padding: const EdgeInsets.all(12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Text(
          answertext,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            fontFamily: 'Comfortaa',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


