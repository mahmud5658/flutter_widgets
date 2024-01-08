import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height/3;
    var width = MediaQuery.of(context).size.width/2;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query Widget',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Colors.red,
          child: Column(
            children: [
              Text('Height: $height',style: const TextStyle(color: Colors.white),),
              Text(
                'Height: $width',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
