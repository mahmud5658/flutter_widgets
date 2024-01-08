import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Fitted Box Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 200,
          width: 400,
          color: Colors.red,
          child: const FittedBox(
            child:  Text(
              "Flutter Fitted Box",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 200,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
