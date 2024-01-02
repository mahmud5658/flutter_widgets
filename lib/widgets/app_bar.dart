import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/person.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.white,
      // ),
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                title: const Text(
                  'AppBar WidgetExample',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                // centerTitle: true,
                elevation: 30,
                shadowColor: Colors.amberAccent,
                toolbarOpacity: 1.0,
                // toolbarHeight: 70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                actions: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, color: Colors.white)),
                  const Icon(Icons.more_vert, color: Colors.white)
                ],
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      text: 'Person',
                    ),
                    Tab(
                      icon: Icon(
                        Icons.card_travel,
                        color: Colors.white,
                      ),
                      text: 'Travel',
                    ),
                    Tab(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      text: 'Cart',
                    )
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  Person(),
                  Center(
                    child: Text('This Travel Page'),
                  ),
                  Center(
                    child: Text('This Cart Page'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
