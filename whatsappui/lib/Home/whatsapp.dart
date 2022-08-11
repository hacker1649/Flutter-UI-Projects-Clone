import 'package:flutter/material.dart';
import 'package:whatsappui/Tabs/camera.dart';
import 'package:whatsappui/Tabs/chats.dart';
import 'package:whatsappui/Tabs/status.dart';
import 'package:whatsappui/Tabs/calls.dart';
import 'package:whatsappui/Items/item1.dart';
import 'package:whatsappui/Items/item2.dart';
import 'package:whatsappui/Items/item3.dart';
import 'package:whatsappui/Items/item4.dart';
import 'package:whatsappui/Items/item5.dart';
import 'package:whatsappui/Search/searchbar.dart';

enum MenuItem{
  item1,
  item2,
  item3,
  item4,
  item5,
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21.0,
              fontFamily: 'PT Sans',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          elevation: 0.7,
          backgroundColor: const Color.fromRGBO(20, 30, 20, 1),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Searchbar()));
              },
              icon: const Icon(Icons.search,size: 20.0,),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
            PopupMenuButton<MenuItem>(
              iconSize: 20.0,
              elevation: 10.0,
              color: const Color.fromRGBO(20, 30, 20, 1),
              onSelected: (value) {
                if(value==MenuItem.item1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Newgroup()));
                }
                else if(value==MenuItem.item2){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Newbroadcast()));
                }
                else if(value==MenuItem.item3){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LinkedDevices()));
                }
                else if(value==MenuItem.item4){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const StarredMessages()));
                }
                else{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()));
                }
              },
              itemBuilder: (context) => const [
                PopupMenuItem(
                  height: 55.0,
                  value: MenuItem.item1,
                  child: Text('New group',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuItem(
                  height: 55.0,
                  value: MenuItem.item2,
                  child: Text('New broadcast',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PT Sans',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuItem(
                  height: 55.0,
                  value: MenuItem.item3,
                  child: Text('Linked Devices',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuItem(
                  height: 55.0,
                  value: MenuItem.item4,
                  child: Text('Starred messages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuItem(
                  height: 55.0,
                  value: MenuItem.item5,
                  child: Text('Settings',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
          bottom: const TabBar(
            padding: EdgeInsets.only(top: 15.0),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt_rounded,size: 23.0,),),
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS',),
              Tab(text: 'CALLS'),
            ],
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            labelStyle: TextStyle(
              fontSize: 16.0,
              fontFamily: 'PT Sans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(20, 100, 20, 1),
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}


