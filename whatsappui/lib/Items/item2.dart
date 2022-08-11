import 'package:flutter/material.dart';

class Newbroadcast extends StatelessWidget {
  const Newbroadcast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.broadcast_on_home_rounded,size: 70.0,color: Colors.white,),
              SizedBox(height: 20.0,),
              Text('New broadcast',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'PT Sans',color: Colors.white,),),
            ],
          ),
        ),
      ),
    );
  }
}


