import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Card Widget',style: TextStyle(color: Colors.white)),
      ),

      body: Center(
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 20,

          shadowColor: Colors.amber[300],

          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}