import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Grid view Widget',
            style: TextStyle(color: Colors.white)),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
          itemCount: 30,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Image.network(
                "https://images.pexels.com/photos/159767/baby-cute-moe-brilliant-159767.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                fit: BoxFit.cover);
          }),
    );
  }
}
