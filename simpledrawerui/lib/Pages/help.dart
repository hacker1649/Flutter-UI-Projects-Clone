import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Text('Help and Feedback',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.feedback_rounded,size: 80.0,),
              SizedBox(height: 20.0,),
              Text('Help and Feedback Page',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'PT Sans',
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




