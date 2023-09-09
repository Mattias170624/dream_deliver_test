import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const[
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.utensils,
            size: 20,
            color: Colors.green,
          ),
          label: 'Restaurants',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.userCircle,
            size: 20,
            color: Colors.green,
          ),
          label: 'Profile',
        ),
      ],
      fixedColor: Colors.deepPurple,
      onTap: (int idx) {
        switch (idx) {
          case 0:
            Navigator.pushNamedAndRemoveUntil(context, '/restaurants', (route) => false);
            break;
          case 1:
            Navigator.pushNamedAndRemoveUntil(context, '/profile', (route) => false);
            break;
        }
      },
    );
  }
}