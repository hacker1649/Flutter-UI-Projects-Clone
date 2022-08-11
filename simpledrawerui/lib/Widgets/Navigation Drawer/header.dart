import 'package:flutter/material.dart';
import 'package:simpledrawerui/Pages/user.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,MaterialPageRoute(builder:(context)=> const Developer()));
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
          child: SafeArea(
            child: Column(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/h3.png'),
                  radius: 40.0,
                ),
                SizedBox(height: 12.0,),
                Text('Developer Details',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



