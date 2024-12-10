import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to different screens based on the selected index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/homePage');
        break;
      case 1:
        Navigator.pushNamed(context, '/notification');
        break;
      case 2:
        Navigator.pushNamed(context, '/orders');
        break;
      case 3:
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF1A122D),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(IconlyBroken.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyBroken.notification),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyBroken.paper),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyBroken.profile),
          label: 'Profile',
        ),
      ],
    );
  }
}
