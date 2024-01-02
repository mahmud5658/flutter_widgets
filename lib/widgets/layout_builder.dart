import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Layout Builder',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              return _buildNormalContainer();
            } else if (constraints.maxWidth > 600 &&
                constraints.maxWidth < 900) {
              return _buildWideContainer();
            } else {
              return _buildLargeContainer();
            }
          },
        ),
      ),
    );
  }
}

Widget _buildNormalContainer() {
  return Center(
    child: Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
  );
}

Widget _buildWideContainer() {
  return Center(
    child: Column(children: [
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ]),
  );
}

Widget _buildLargeContainer() {
  return Center(
    child: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ],
    ),
  );
}
