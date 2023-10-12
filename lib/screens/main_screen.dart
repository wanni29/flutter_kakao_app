import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Center(child: Text("IndexedStack 1")),
          Center(child: Text("IndexedStack 2")),
          Center(child: Text("IndexedStack 3")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsisH), label: ""),
        ],
      ),
    );
  }
}
