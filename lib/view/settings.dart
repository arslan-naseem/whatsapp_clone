import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatsapp_clone/utils/style.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey,
          child: const Text(
            'Whatsapp',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Settings',
          style: largeText,
        ),
      ),
    );
  }
}
