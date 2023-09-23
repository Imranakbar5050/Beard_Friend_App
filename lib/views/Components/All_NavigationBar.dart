import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/appimages.dart';
import '../Barber_Shops_Screen_9.dart';
import '../Beard_Coins_Screen_7.dart';
import '../Beard_Contest_Screen_14.dart';
import '../Shopping_Screen18.dart';

class All_NavigationBar extends StatefulWidget {
  const All_NavigationBar({super.key});

  @override
  State<All_NavigationBar> createState() => _All_NavigationBarState();
}

class _All_NavigationBarState extends State<All_NavigationBar> {
  int St = 0;
  List Screen = [Beard_Coins_Screen_7(),Barber_Shops_Screen_9(),Beard_Contest_Screen_14(),Shopping_Screen18()];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: St,
        onTap: (index) =>setState(() =>St=index
        ) ,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
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

body:Screen[St] ,
      );

  }
}
