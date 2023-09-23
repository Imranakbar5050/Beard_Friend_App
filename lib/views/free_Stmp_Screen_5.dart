import 'package:beard_friend/Utils/appimages.dart';
import 'package:beard_friend/views/Beard_Coins_Screen_7.dart';
import 'package:beard_friend/views/Components/All_NavigationBar.dart';
import 'package:beard_friend/views/Home_Screen_6.dart';
import 'package:beard_friend/views/Login_Screen_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class free_Stmp_Screen_5 extends StatefulWidget {
  const free_Stmp_Screen_5({super.key});

  @override
  State<free_Stmp_Screen_5> createState() => _free_Stmp_Screen_5State();
}

class _free_Stmp_Screen_5State extends State<free_Stmp_Screen_5> {
  bool isButton1Pressed = false;
  bool isButton2Pressed = false;
  void _onButton1Pressed() {
    setState(() {
      isButton1Pressed = true;
      isButton2Pressed = false;
    });
  }

  void _onButton2Pressed() {
    setState(() {
      isButton1Pressed = false;
      isButton2Pressed = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
         children: [
           SizedBox(height: 200,),
           Container(
             child: AlertDialog(

               title: Column(
                 children: [
                   Container(
                       height: 100.h,
                       child: Image(image: AssetImage(AppImages.splash_image_1,),)

                   ),

                   SizedBox(height: 10),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Congratulation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                   ),
                   SizedBox(height: 5),
                   Text("You Have Received 1 Stamp for Free. You Can Assign it to your favorite Barber.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)),
SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10, right: 10),
                     child: Row(
                       children: [
                         Container(
                           height: 40,
                           width: 100,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               backgroundColor: isButton2Pressed ? Color(0xffBA5EEF) : Color(0xff2C2C2E),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                             ),
                             onPressed: () {
                               // Navigate to the next screen when the button is pressed
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => All_NavigationBar(), // Replace with your next screen widget
                                 ),
                               );
                             },
                             child: Text(
                               "Skip",
                               style: TextStyle(
                                 fontSize: 20.sp,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ),
                         SizedBox(width: 10.w,),
                         Container(
                           height: 40,
                           width: 100,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               backgroundColor: isButton2Pressed ? Color(0xffBA5EEF) : Color(0xff2C2C2E),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                             ),
                             onPressed: () {
                               // Navigate to the next screen when the button is pressed
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => Login_Screen_3(), // Replace with your next screen widget
                                 ),
                               );
                             },
                             child: Text(
                               "Assign",
                               style: TextStyle(
                                 fontSize: 20.sp,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),

                 ],
               ),

             ),
           )
         ],
      ),
    );
  }
}
