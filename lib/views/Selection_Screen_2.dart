import 'package:beard_friend/views/free_Stmp_Screen_5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../Provider/Selection_Screen_2_provider.dart';
import 'Login_Screen_3.dart';

class Selection_Screen_2 extends StatefulWidget {
  const Selection_Screen_2({super.key});
  @override
  State<Selection_Screen_2> createState() => _Selection_Screen_2State();
}

class _Selection_Screen_2State extends State<Selection_Screen_2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 70, right: 70),
            child: Text(
              'Tell Us About Yourself',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: Text(
              'Choose to Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),



         Consumer<Selection_Screen_2_provider>(builder:(context, select_provider1, child) => Container(
           height: 80.h,
           width: 300.w,
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor:
               select_provider1.isButton1Pressed ? Color(0xffBA5EEF) : Color(0xff2C2C2E),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
             ),
             onPressed: select_provider1.onButton1Pressed,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(
                   Icons.person,
                   color: Colors.white70,
                   size: 35,
                 ),
                 SizedBox(
                     width: 20.w), // Add some spacing between icon and text
                 Text(
                   "Beard Friend",
                   style: TextStyle(
                     fontSize: 20.sp,
                     color: Colors.white70,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ],
             ),
           ),
         ),),
          SizedBox(height: 30.h),

       Consumer<Selection_Screen_2_provider>(builder: (context, select_provider2, child) =>
           Container(
           height: 80.h,
           width: 300.w,
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor:
               select_provider2.isButton2Pressed ? Color(0xffBA5EEF) : Color(0xff2C2C2E),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
             ),
             onPressed: select_provider2.onButton2Pressed,
             child:
             Row(mainAxisAlignment: MainAxisAlignment.center, children: [
               Icon(
                 Icons.home,
                 color: Colors.white70,
                 size: 35,
               ),
               SizedBox(
                 width: 35.w,
               ),
               Text(
                 "Barbar shop",
                 style: TextStyle(
                   fontSize: 17.sp,
                   color: Colors.white70,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ]),
           )),),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 200),
            child: Center(
              child: Container(
                height: 50.h,
                width: 100.w,
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
                        builder: (context) => free_Stmp_Screen_5(),
                      ),
                    );
                  },
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 19.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          width:
                              10.w), // Add some spacing between text and icon
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 15.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
