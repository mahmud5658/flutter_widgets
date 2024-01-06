import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Stack Widget',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
              Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
              Positioned(
                left: 0,
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
    );
  }
}