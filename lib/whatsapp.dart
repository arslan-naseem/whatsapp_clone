import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/chat_screen.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({super.key});

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                iconColor: Colors.white,
                onSelected: (value) {
                  if (value == 'value2') {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: ((context) => const ())));
                  }
                },
                itemBuilder: ((context) {
                  return [
                    const PopupMenuItem(value: 'value1', child: Text('Group')),
                    const PopupMenuItem(value: 'value2', child: Text('Setting'))
                  ];
                })),
          ],
          bottom: const TabBar(
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.greenAccent,
              tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'Chats',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Status',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Calls',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Text('Camera'),
          ChatScreen(),
          Text('Status'),
          Text('Camera'),
        ]),
      ),
    );
  }
}
