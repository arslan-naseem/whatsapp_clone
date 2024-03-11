import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 12, // Total number of items including static items
        itemBuilder: (context, index) {
          if (index == 0) {
            return const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                ),
              ),
              title: Text('Create a call link'),
              subtitle: Text('Share a link for your WhatsApp call'),
            );
          } else if (index == 1) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recent',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            );
          } else {
            final listItemIndex = index - 2; // Adjusted index for list items
            return ListTile(
              title: const Text(
                'Arslan',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.red,
                  ),
                  SizedBox(width: 5),
                  Text('4 March, 9:00 PM'),
                ],
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              trailing: listItemIndex.isEven
                  ? const Icon(
                      Icons.call,
                      color: Colors.green,
                    )
                  : const Icon(
                      Icons.video_call,
                      color: Colors.green,
                    ),
            );
          }
        },
      ),
    );
  }
}
