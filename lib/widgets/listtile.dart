import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('ListTile Widget',style: TextStyle(color: Colors.white)),
      ),

      body: const Center(
        child: ListTile(
          leading: Icon(Icons.message),
          title: Text("Abdullah Al Mahmud"),
          subtitle: Text("Daffodil International University"),
          trailing: Icon(Icons.delete),
          textColor: Colors.purple,
          iconColor: Colors.red,
        ),
      ),
    );
  }
}