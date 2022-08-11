import 'package:flutter/material.dart';
import './header.dart';
import './items.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Header(),
            Items(),
          ],
        ),
      ),
    );
  }
}




