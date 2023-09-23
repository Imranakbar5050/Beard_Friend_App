import 'package:beard_friend/Utils/appconstants.dart';
import 'package:beard_friend/views/Components/All_NavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appimages.dart';
import 'Components/AlertDialogBox.dart';
import 'Components/DialogBoxAlert_Add_Review.dart';


class Reviews_screen_12 extends StatefulWidget {
  const Reviews_screen_12({super.key});

  @override
  State<Reviews_screen_12> createState() => _Reviews_screen_12State();
}

class _Reviews_screen_12State extends State<Reviews_screen_12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:
          Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)

      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child:
              Row(
                children: [
                  Text('Reviews',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(width: 115,),
                  GestureDetector(
                    onTap: () {
                      // Show your dialog box here
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return
                              DialogBoxAlert_Add_Review();
                          });
                    },
                    child: Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Color(0xFFBA5EEF),
                        borderRadius: BorderRadius.circular(8), // Circular border
                      ),
                      child:
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Add Resirvation",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(right: 185),
              child: Text('Customers Feedback',style: TextStyle(color: Colors.white38),),
            ),

            SizedBox(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, index) {
                  List<String> Name = [
                    "Abid Bugg",
                    "Bugg        ",

                  ];
                  List<String> Rating = [
                    "3.5",
                    "4.5",

                  ];

                  List<String> imageList = [
                    AppImages.Review_Sc_img1,
                    AppImages.Review_Sc_img2,

                  ];
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          border: Border.all(color: Colors.white12, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 10),
                            Row(
                              children: [
                                ClipOval(
                                  child: Image(
                                    image: AssetImage(imageList[index]),
                                    height: 80,
                                    width: 80,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            Name[index],
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 90.w),
                                          Container(
                                            width: 60,
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Icon(Icons.star,
                                                    color: Colors.black),
                                                Text(
                                                  Rating[index],
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 160),
                                        child: Text('2 Days Ago',style: TextStyle(color: Colors.white38),),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Text(
                              AppConstants.Review_text,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
