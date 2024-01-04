import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          titleSpacing: 10,
          toolbarHeight: 70,
          // toolbarOpacity: 0.9,
          elevation: 50,
          title: const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
              onPressed: () {
                snackBar("I am comment", context);
              },
              icon: const Icon(
                Icons.comment,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                snackBar("I am search", context);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                snackBar("I am  settings", context);
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ],
          // leading: IconButton(
          //   onPressed: () {
          //     snackBar('I am menu button', context);
          //   },
          //   icon: const Icon(
          //     Icons.menu,
          //     color: Colors.white,
          //   ),
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            snackBar('I am floating actions button', context);
          },
          elevation: 10,
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Person'),
          ],
          onTap: (int index) {
            if (index == 0) {
              snackBar('I am home bottom menu', context);
            } else if (index == 1) {
              snackBar('I am contact bottom menu', context);
            } else {
              snackBar('I am profile bottom menu', context);
            }
          },
          backgroundColor: Colors.amber,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  accountName: const Text('Abdullah Al Mahmud'),
                  accountEmail: const Text('Info@abdullah.com'),
                  currentAccountPicture: Image.network(
                      'https://icons8.com/icon/7I3BjCqe9rjG/flutter'),
                ),
              ),
              ListTile(
                onTap: () {
                  snackBar('Home', context);
                },
                leading: const Icon(Icons.home),
                title: const Text('Home'),
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text('Contact'),
                onTap: () {
                  snackBar('Contact', context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  snackBar('Profile', context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                onTap: () {
                  snackBar('Email', context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Phone'),
                onTap: () {
                  snackBar('Phone', context);
                },
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  accountName: const Text('Abdullah Al Mahmud'),
                  accountEmail: const Text('Info@abdullah.com'),
                  currentAccountPicture: Image.network(
                      'https://icons8.com/icon/7I3BjCqe9rjG/flutter'),
                ),
              ),
              ListTile(
                onTap: () {
                  snackBar('Home', context);
                },
                leading: const Icon(Icons.home),
                title: const Text('Home'),
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text('Contact'),
                onTap: () {
                  snackBar('Contact', context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  snackBar('Profile', context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                onTap: () {
                  snackBar('Email', context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Phone'),
                onTap: () {
                  snackBar('Phone', context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.black, width: 6),
            ),
            alignment: Alignment.topCenter,
            child: const Text(
              'Abdullah',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

snackBar(message, context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}
