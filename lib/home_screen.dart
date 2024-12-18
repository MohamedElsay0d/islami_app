import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       items: const [
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           activeIcon: Icon(Icons.home_outlined),
           label: 'Home',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           label: 'Settings',
         ),
       ],
     ),
    );
  }
}