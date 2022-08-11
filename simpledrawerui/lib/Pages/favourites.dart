import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Text('Favourites',
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
              Icon(Icons.favorite_rounded,size: 80.0,),
              SizedBox(height: 20.0,),
              Text('Favourites Page',
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




