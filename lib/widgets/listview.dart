import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'List View',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 100,
            color: Colors.amber,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.green,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.red,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.black,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.orange,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.limeAccent,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.indigo,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.grey,
          ),
          const Divider(),
          Container(
            height: 100,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
