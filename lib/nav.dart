import 'package:flutter/material.dart';

import '../screens/settings.dart';
import '../screens/profile.dart';
import '../screens/home.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu ({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int myIndex = 1;

  List<Widget> _screens = [
    SettingsScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Expense Tracker'),
    ),
    body: _screens[myIndex],
    bottomNavigationBar: BottomNavigationBar(
      onTap: (index) {
        setState(() {
          myIndex = index;
        });
      },
      currentIndex: myIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: 'Profile'),
    ],),
    );
  }
}
