import 'package:e_cmrc/screen/bag/bag_page.dart';
import 'package:e_cmrc/screen/home/home_page.dart';
import 'package:e_cmrc/screen/favorites/love_page.dart';
import 'package:e_cmrc/screen/profile/profile_page.dart';
import 'package:e_cmrc/screen/shop/shop_page.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  // List of screens to show based on the selected index
  final List<Widget> _screens = const [
    HomePage(),
    ShopPage(),
    BagPage(),
    LovePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBarTheme(
          data: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/home.png',
                  width: 25,
                  height: 25,
                  color: _selectedIndex == 0 ? Colors.red : Colors.grey,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/shopimg.png',
                  width: 25,
                  height: 25,
                  color: _selectedIndex == 1 ? Colors.red : Colors.grey,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bagimg.png',
                  width: 25,
                  height: 25,
                  color: _selectedIndex == 2 ? Colors.red : Colors.grey,
                ),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/Loveimg.png',
                  width: 25,
                  height: 25,
                  color: _selectedIndex == 3 ? Colors.red : Colors.grey,
                ),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/profile.png',
                  width: 25,
                  height: 25,
                  color: _selectedIndex == 4 ? Colors.red : Colors.grey,
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ));
  }
}
