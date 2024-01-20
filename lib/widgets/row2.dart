import 'package:flutter/material.dart';

class RowContainer extends StatelessWidget {
  const RowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Row container",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZoGXR0XsjcAmmh-YnEp2hlcn25nlLRVgg1w&usqp=CAU"),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZoGXR0XsjcAmmh-YnEp2hlcn25nlLRVgg1w&usqp=CAU"),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZoGXR0XsjcAmmh-YnEp2hlcn25nlLRVgg1w&usqp=CAU"),
            )
          ],
        ),
      ),
    );
  }
}
