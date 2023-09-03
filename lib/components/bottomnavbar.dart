import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  
  final int index;
  final Function(int?)onTap;

  BottomNavBar({required this.index,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      
      selectedItemColor: Colors.grey[100],
      unselectedItemColor: Colors.grey[600],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      elevation:0,
      type: BottomNavigationBarType.fixed,
      items:[
        BottomNavigationBarItem(icon:Icon(Icons.home_rounded),label:'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none_rounded), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded), label: 'Fav'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: 'Account'),
      ]
    );
  }
}