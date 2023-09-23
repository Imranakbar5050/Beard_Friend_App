import 'package:beard_friend/views/Barber_Shops_Screen_9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/appimages.dart';

class Navigation_bar extends StatefulWidget {
  const Navigation_bar({super.key});

  @override
  State<Navigation_bar> createState() => _Navigation_barState();
}

class _Navigation_barState extends State<Navigation_bar> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    if (index == 1) {
      // Only navigate when BarberShops item is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Barber_Shops_Screen_9()),
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
