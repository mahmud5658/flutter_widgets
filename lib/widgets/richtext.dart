import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Rich Text widget",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: RichText(
            textDirection: TextDirection.rtl,
            text: const TextSpan(
                text: "Flutter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
                children: [
                  TextSpan(
                    text: " Bangla ",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.normal),
                  ),
                  TextSpan(text: "Tutorial"),
                ]),
          ),
        ),
      ),
    );
  }
}
