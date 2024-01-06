import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Image Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Image.network(
            "https://images.pexels.com/photos/159767/baby-cute-moe-brilliant-159767.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            fit: BoxFit.contain,
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
