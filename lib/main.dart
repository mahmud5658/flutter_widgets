import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // darkTheme: ThemeData(primarySwatch: Colors.amber),
      home: const BottomNavigation(),
    );
  }
}
