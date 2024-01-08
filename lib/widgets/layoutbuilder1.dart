import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Layout Builder Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          //  var height = constraints.maxHeight;
          var width = constraints.maxWidth;
          if (width < 600) {
            return Column(
              children: [
                const Text("It's a mobile device"),
                Text('width:- $width'),
              ],
            );
          } else if (width > 600 && width < 900) {
            return const Column(
              children: [
                Text('It\'s a tablet device'),
              ],
            );
          } else {
            return const Column(
              children: [
                Text('It\'s a desktop device'),
              ],
            );
          }
        },
      ),
    );
  }
}
