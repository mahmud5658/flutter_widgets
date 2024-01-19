import 'package:flutter/material.dart';

class ElevatedWidget extends StatelessWidget {
  const ElevatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Elevated Button widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Elevated Button'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            primary: Colors.red,
            onPrimary: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
            shadowColor: Colors.green,
            elevation: 10,
            side: const BorderSide(
              color: Colors.black,
              width: 5,
            )
          ),
        ),
      ),
    );
  }
}
