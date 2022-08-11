import 'package:flutter/material.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.live_tv_rounded,size: 70.0,color: Colors.white,),
              SizedBox(height: 20.0,),
              Text('Linked Devices',style: TextStyle(fontSize: 25.0,fontFamily: 'PT Sans',color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}


