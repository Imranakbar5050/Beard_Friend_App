import 'package:beard_friend/views/Beard_Coins_Screen_7.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/appimages.dart';

class Navigation_Bar_beard_shops extends StatefulWidget {
  const Navigation_Bar_beard_shops({super.key});

  @override
  State<Navigation_Bar_beard_shops> createState() => _Navigation_Bar_beard_shopsState();
}

class _Navigation_Bar_beard_shopsState extends State<Navigation_Bar_beard_shops> {
  int _selectedIndex = 1;

  void _onNavItemTapped(int index) {
    if (index == 0) {
      // Only navigate when BarberShops item is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Beard_Coins_Screen_7()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
      child: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onNavItemTapped,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(AssetImage(AppImages.navimg1)),
              label: 'Beard Coins',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(AssetImage(AppImages.navimg2,)),
              label: 'BarberShops',

            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(AssetImage(AppImages.navimg3,)),
              label: 'Contest',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(AssetImage(AppImages.navimg4,)),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(AssetImage(AppImages.navimg5,)),
              label: 'Profile',
            ),
          ]),
    );
  }
}
