import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Aspect Ratio',style: TextStyle(color: Colors.white)),
      ),
      body: AspectRatio(
        aspectRatio: 1/2,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}