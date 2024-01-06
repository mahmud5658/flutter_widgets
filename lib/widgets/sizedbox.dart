import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('SizedBox Widget',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.green,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.purple,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: Container(
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
