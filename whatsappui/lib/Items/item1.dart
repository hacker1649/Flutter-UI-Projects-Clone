import 'package:flutter/material.dart';

class Newgroup extends StatelessWidget {
  const Newgroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.group_rounded,size: 70.0,color: Colors.white,),
              SizedBox(height: 20.0,),
              Text('New group',style: TextStyle(fontSize: 25.0,fontFamily: 'PT Sans',color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}


