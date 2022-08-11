import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.screen_search_desktop_rounded,size: 70.0,color: Colors.white,),
              SizedBox(height: 20.0,),
              Text('Search Bar',style: TextStyle(color: Colors.white,fontFamily: 'PT Sans',fontSize: 25.0,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}


