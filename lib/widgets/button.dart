import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Button Widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                mySnackBar("I am Text Button", context);
              },
              child: const Text("Text Button"),
            ),
            ElevatedButton(
              onPressed: () {
                mySnackBar("I am elevated button", context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                mySnackBar("I am outline button", context);
              },
              child: const Text("outline button"),
            ),
          ],
        ),
      ),
    );
  }
}
