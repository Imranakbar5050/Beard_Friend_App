import 'package:beard_friend/Utils/appconstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Beard_Contest_Screen_14.dart';
import 'Beard_Contest_SC2_screen16.dart';
import 'Components/Circular_Indicator.dart';
import 'Components/ParticipateDialogbx.dart';


class Participation_Screen15 extends StatefulWidget {
  const Participation_Screen15({super.key});

  @override
  State<Participation_Screen15> createState() => _Participation_Screen15State();
}

class _Participation_Screen15State extends State<Participation_Screen15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
body: SingleChildScrollView(
  child:   Column(
    children: [
      SizedBox(
        height: 70,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 180),
        child: Text(
          'Participate',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 100),
        child: Text(
          'How to participate in the Contest',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 150.h,
        width: 320.w,
        decoration: BoxDecoration(
          color: Colors.white12,
          border: Border.all(color: Colors.white12, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 60, right: 60, top: 20),
              child: Text(
                "Contest Ends in",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Circular_Indicator(
                  text: '2d',
                  progress: 0.70,
                ),
                SizedBox(width: 10),
                Circular_Indicator(
                  text: '18h',
                  progress: 0.40,
                ),
                SizedBox(width: 10),
                Circular_Indicator(
                  text: '45m',
                  progress: 0.25,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text('Description',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(AppConstants.Contect_screen_Description,style: TextStyle(color: Colors.white38,fontSize: 15,fontWeight: FontWeight.normal),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text('Advantages:',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(AppConstants.Contect_screen_Advantages,style: TextStyle(color: Colors.white38,fontSize: 15,fontWeight: FontWeight.normal),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text('How to Join?',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child:
            Text("The Steps are Given Below.",style: TextStyle(color: Colors.white38,fontSize: 15,fontWeight: FontWeight.normal),),
  
          ),
  
        ],
      ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            children: [
              Icon(Icons.circle,color: Colors.white38,size: 10,),
              SizedBox(width: 5,),
              Text("Here ipsum dolor sit amet, consectetuer.",style: TextStyle(color: Colors.white38,fontSize: 15,fontWeight: FontWeight.normal),),
  
            ],
          ),
        ),
      SizedBox(height: 5,),
  
      Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Row(
          children: [
            Icon(Icons.circle,color: Colors.white38,size: 10,),
            SizedBox(width: 5,),
            Text("Hpsum dolor sit amet, consectetuer ",style: TextStyle(color: Colors.white38,fontSize: 15,fontWeight: FontWeight.normal),),
  
          ],
        ),
      ),
      SizedBox(height: 5,),
  
      Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Row(
          children: [
            Icon(Icons.circle,color: Colors.white38,size: 10,),
            SizedBox(width: 5,),
            Text("Cras dapibus. Vivamus elementum \nsemper nisi.",style: TextStyle(color: Colors.white38,fontSize: 15,fontWeight: FontWeight.normal),),
  
          ],
        ),
      ),
      SizedBox(height: 20,),

      GestureDetector(
        onTap: () {
          // Show your dialog box here
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return ParticipateDialogbx();
              });
        },
       child: Container(
          height: 40.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Color(0xffBA5EEF),
            border: Border.all(color: Colors.white12, width: 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              "Continue To Participate",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),

      SizedBox(height: 20,)
    ],
  ),
),
    );
  }
}
