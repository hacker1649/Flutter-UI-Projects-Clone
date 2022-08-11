import 'package:simpledrawerui/Pages/notifications.dart';
import 'package:simpledrawerui/Pages/plugins.dart';
import 'package:simpledrawerui/Pages/updates.dart';
import 'package:flutter/material.dart';
import 'package:simpledrawerui/Pages/home.dart';
import 'package:simpledrawerui/Pages/favourites.dart';
import 'package:simpledrawerui/Pages/workflow.dart';
import 'package:simpledrawerui/Pages/settings.dart';
import 'package:simpledrawerui/Pages/help.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
      child: Wrap(
        runSpacing: 0,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined,size: 25.0,),
            title: const Text('Home',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Home()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border,size: 25.0,),
            title: const Text('Favourites',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Favourites()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_outline,size: 25.0,),
            title: const Text('WorkFlow',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const WorkFlow()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.update_outlined,size: 25.0,),
            title: const Text('Updates',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Updates()));
            },
          ),
          Divider(color: Colors.grey[700],thickness: 1.5,),
          ListTile(
            leading: const Icon(Icons.account_tree_outlined,size: 25.0,),
            title: const Text('Plugins',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Plugins()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications_on_outlined,size: 25.0,),
            title: const Text('Notifications',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Notifications()));
            },
          ),
          Divider(color: Colors.grey[700],thickness: 1.5,),
          ListTile(
            leading: const Icon(Icons.settings,size: 25.0,),
            title: const Text('Settings',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Settings()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_rounded,size: 25.0,),
            title: const Text('Help and Feedback',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Help()));
            },
          ),
        ],
      ),
    );
  }
}




