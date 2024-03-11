import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/style.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return const ListTile(
              title: Text(
                'Arslan Nasim',
                style: boldTextStyle,
              ),
              subtitle: Text('Hi, what\'s up?'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              trailing: Text('01/01/2024'),
            );
          })),
    );
  }
}
