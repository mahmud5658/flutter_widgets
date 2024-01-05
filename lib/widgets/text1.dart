import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextWidgetView extends StatelessWidget {
  const TextWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Text Widget',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Text(
            'This is Abdullah Al Mahmud studied at Daffodil International University.',
            style: TextStyle(
              fontSize: 25,
              color: Colors.purple,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              letterSpacing: 5,
              wordSpacing: 5,
              backgroundColor: Colors.grey,
              shadows: [
                Shadow(
                  color: Colors.greenAccent,
                  offset: Offset(2, 1),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(30),
              child: RichText(
                // textDirection: TextDirection.ltr,
                text: TextSpan(
                  text: 'Don\'t have an account',
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  children: [
                    TextSpan(
                      text: ' Sign Up',
                      style: const TextStyle(
                          color: Colors.blueAccent, fontSize: 20),
                      recognizer: TapGestureRecognizer(),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: const TextStyle(
                          color: Colors.blueAccent, fontSize: 20),
                      recognizer: TapGestureRecognizer(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Clilck',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'to add',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
