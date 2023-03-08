import 'package:flutter/material.dart';

import 'Print.dart';

class MainPage extends MaterialPageRoute<void> {
  MainPage()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Main Page'),
              actions: <Widget>[
                PopupMenuButton<String>(
                  onSelected: handleClick,
                  itemBuilder: (BuildContext context) {
                    return {'Logout', 'Settings', 'Print'}.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ],
            ),
            body: const HomeScreen(),
          );
        });
}

void handleClick(String value) {
  switch (value) {
    case 'Logout':
      break;
    case 'Settings':
      break;
    case 'Print':
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

  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: List.generate(6, (index) {
            return InkWell(
              onTap: () {
                onGridTapped(index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: index == _selectedGridIndex
                      ? Colors.lightBlue
                      : Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Center(
                  child: Text(months[index]),
                ),
              ),
            );
          }),
        ),
      ),
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
