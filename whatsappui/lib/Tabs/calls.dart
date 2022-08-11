import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.wifi_calling_3_rounded,size: 70.0,color: Colors.white,),
          SizedBox(height: 20.0,),
          Text('Calls',style: TextStyle(color: Colors.white,fontFamily: 'PT Sans',fontSize: 25.0,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}


