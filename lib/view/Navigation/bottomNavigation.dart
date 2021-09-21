import 'package:flutter/material.dart';
import 'package:orion/view/startScreens/Account.dart';
import 'package:orion/view/startScreens/Category.dart';
import 'package:orion/view/startScreens/Chat.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:orion/view/startScreens/Home.dart';
import 'package:orion/view/startScreens/Offers.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Category(),
    Offers(),
    Account(),
    Chat()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ), */
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _selectedIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'HOME',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.category),
            title: Text(
              'CATEGORY',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/giftBold.png'),
            ),
            title: Text(
              'OFFERS',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'ACCOUNT',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(AssetImage('assets/icons/chat.png')),
            title: Text(
              'CHAT',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
