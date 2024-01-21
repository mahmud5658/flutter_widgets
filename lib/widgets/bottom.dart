import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  final List<Widget> _views = <Widget>[
    const Center(
      child: Text(
        "Home is selected",
        style: TextStyle(color: Colors.red,fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
        "Chat is selected",
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
        "Notifications is selected",
        style: TextStyle(color: Colors.amber, fontSize: 20),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Bottom Navigation Bar",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _views.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
