import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.history_toggle_off_rounded,size: 70.0,color: Colors.white,),
          SizedBox(height: 20.0,),
          Text('Status',style: TextStyle(color: Colors.white,fontFamily: 'PT Sans',fontSize: 25.0,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}


