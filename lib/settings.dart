import 'package:cfmkids/login.dart';
import 'package:cfmkids/main.dart';
import 'package:flutter/material.dart';
import 'package:cfmkids/signup.dart';

class Settings extends MaterialPageRoute<void> {
  final BuildContext mainContext;
  Settings(this.mainContext)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Main Page'),
              actions: <Widget>[
                PopupMenuButton<String>(
                  icon: Icon(Icons.more_vert),
                  onSelected: (value) => handleClick(value, mainContext),
                  itemBuilder: (BuildContext context) {
                    return {'Logout', 'Settings'}.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                  offset: const Offset(
                      0, 40), // Mueve el menú 40 pixeles hacia arriba
                ),
              ],
            ),
            body: const HomeScreen(),
          );
        });
}

void handleClick(String value, BuildContext mainContext) {
  switch (value) {
    case 'Logout':
      Navigator.of(mainContext)
          .push(MaterialPageRoute(builder: (_) => const LoginPage()));
      break;
    case 'Settings':
      break;
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _selectedGridIndex = 0;

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onGridTapped(int index) {
    setState(() {
      _selectedGridIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
      ),
    );
  }
}
