import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: const Text(
            'Stack Widget',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Positioned(
                  // top: -50,
                  // right: 0,
                  bottom: -50,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
