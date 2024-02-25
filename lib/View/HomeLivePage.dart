import 'package:ettywinz/Common/MyAppBar.dart';
import 'package:ettywinz/config/config.dart';
import 'package:flutter/material.dart';

class HomeLivePage extends StatefulWidget {
  HomeLivePage({Key? key}) : super(key: key);

  @override
  _HomeLivePageState createState() => _HomeLivePageState();
}

class _HomeLivePageState extends State<HomeLivePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'EttyWinz',
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: themeColorlightgray,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.notifications),
          //   label: 'Notifications',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Settings',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        // onTap: _onItemTapped,
      ),
    );
  }
}
