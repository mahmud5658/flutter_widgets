import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key});

  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('List View Builder',
            style: TextStyle(color: Colors.white)),
      ),
      // body: ListView.builder(
      //   padding: const EdgeInsets.all(8),
      //   itemCount: entries.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 50,
      //       color: Colors.amber[colorCodes[index]],
      //       child: Center(child: Text('Entry ${entries[index]}')),
      //     );
      //   },
      // ),

      body: ListView.separated(
        padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: entries.length),
    );
  }
}
