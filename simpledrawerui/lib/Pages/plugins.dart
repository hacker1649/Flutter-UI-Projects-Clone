import 'package:flutter/material.dart';

class Plugins extends StatefulWidget {
  const Plugins({Key? key}) : super(key: key);

  @override
  State<Plugins> createState() => _PluginsState();
}

class _PluginsState extends State<Plugins> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Text('Plugins',
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
              Icon(Icons.account_tree_rounded,size: 80.0,),
              SizedBox(height: 20.0,),
              Text('Plugins Page',
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




