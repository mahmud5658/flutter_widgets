import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 3;
    var width = MediaQuery.of(context).size.width / 2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Media Query',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.red,
              height: height,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height: $height',
                    style:
                        TextStyle(color: Colors.white, fontSize: height * .05),
                  ),
                  Text(
                    'Width:$width',
                    style:
                        TextStyle(color: Colors.white, fontSize: width * .07),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
