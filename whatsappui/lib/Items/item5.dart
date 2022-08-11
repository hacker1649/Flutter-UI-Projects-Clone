import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.settings_rounded,size: 70.0,color: Colors.white,),
              SizedBox(height: 20.0,),
              Text('Settings',style: TextStyle(color: Colors.white,fontSize: 25.0,fontFamily: 'PT Sans',fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}


