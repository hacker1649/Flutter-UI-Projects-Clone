import 'package:flutter/material.dart';
import 'package:whatsappui/Tabs/chat_class.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context,index) => Column(
        children: [
          const SizedBox(height: 0.0,),
          const Divider(height: 10.0,),
          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(data[index].url),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data[index].name,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(data[index].time,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13.0,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(data[index].message,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.0,
                  fontFamily: 'PT Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


