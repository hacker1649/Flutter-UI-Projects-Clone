import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.camera_alt_outlined,size: 70.0,color: Colors.white,),
          SizedBox(height: 20.0,),
          Text('Camera',style: TextStyle(color: Colors.white,fontFamily: 'PT Sans',fontSize: 25.0,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}


