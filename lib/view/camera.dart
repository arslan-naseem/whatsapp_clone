import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/style.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Camera',
          style: largeText,
        ),
      ),
    );
  }
}
