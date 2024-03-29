import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp_clone',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.teal,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)),
      ),
      home: const WhatsAppScreen(),
    );
  }
}
