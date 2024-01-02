import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.green,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
