import 'package:beard_friend/Utils/appimages.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Beard_Coins_Screen_7.dart';
import 'Components/All_NavigationBar.dart';

class Home_Screen_6 extends StatefulWidget {
  const Home_Screen_6({super.key});

  @override
  State<Home_Screen_6> createState() => _Home_Screen_6State();
}

class _Home_Screen_6State extends State<Home_Screen_6> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left: 130,right: 130),
              child: Container(
                height: 100,
                width: 150,
                child: ClipOval(child: Image(image: AssetImage(AppImages.Home_Screen_Image_1),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'Welcome Nouman',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text(
                'Let’s Scan your QR Code to get a Beard Coin',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),

            SizedBox(height: 20,),
            
            Container(
              height: 200,
                color: Colors.white,
                child: Image(image: AssetImage(AppImages.Home_Screen_Image_2,))),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Center(
                child: Text(
                  'This is your anonymous ID. Behind it hides something like “User#13". You can now have your ID scanned by a participating barber and you will immediately receive your digital stamp.\n\nWe call it “beard coin”.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Center(
                child: Container(
                  height: 40.h,
                  width: 140.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffBA5EEF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Beard_Coins_Screen_7(),
                        ),
                      );
                    },
                    child: Text(
                      "Beard Coins",
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),);

      //bottomNavigationBar: All_NavigationBar());



  }
}

