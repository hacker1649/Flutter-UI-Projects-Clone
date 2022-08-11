import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Text('Notifications',
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
              Icon(Icons.notifications_on_rounded,size: 80.0,),
              SizedBox(height: 20.0,),
              Text('Notifications Page',
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




