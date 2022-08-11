import 'package:flutter/material.dart';

class StarredMessages extends StatelessWidget {
  const StarredMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.message_rounded,size: 70.0,color: Colors.white,),
              SizedBox(height: 20.0,),
              Text('Starred Messages',style: TextStyle(fontSize: 25.0,color: Colors.white,fontFamily: 'PT Sans',fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}


