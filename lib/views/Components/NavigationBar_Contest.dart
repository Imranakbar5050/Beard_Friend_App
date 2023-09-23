import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/appimages.dart';
import '../Beard_Contest_Screen_14.dart';

class NavigationBar_Contest extends StatefulWidget {
  const NavigationBar_Contest({super.key});

  @override
  State<NavigationBar_Contest> createState() => _NavigationBar_ContestState();
}

class _NavigationBar_ContestState extends State<NavigationBar_Contest> {
  int _selectedIndex = 0;
  List Screens = [Beard_Contest_Screen_14()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: (index) =>setState(() =>_selectedIndex=index
          ) ,

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
          ]) ,
      body:Screens[_selectedIndex]

    );
  }
}
