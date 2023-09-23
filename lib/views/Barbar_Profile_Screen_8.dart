import 'package:beard_friend/Utils/appconstants.dart';
import 'package:beard_friend/Utils/appimages.dart';
import 'package:beard_friend/views/Components/All_NavigationBar.dart';
import 'package:beard_friend/views/Components/Navigation_bar.dart';
import 'package:beard_friend/views/Components/Opening_Timimg.dart';
import 'package:beard_friend/views/Components/Shop_Detils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Components/Barbar_Details.dart';
import 'Components/Price_list.dart';

class Barbar_Profile_Screen_8 extends StatefulWidget {
  final String imagePath;
  final String style;
  final String date;

  const Barbar_Profile_Screen_8(
      {required this.imagePath,
      required this.style,
      required this.date,
      super.key});

  @override
  State<Barbar_Profile_Screen_8> createState() =>
      _Barbar_Profile_Screen_8State();
}

class _Barbar_Profile_Screen_8State extends State<Barbar_Profile_Screen_8> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white12,
        body:
        Column(children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                child: Image(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_back_ios_new_rounded,
                              color: Colors.white, size: 30),
                          SizedBox(width: 220.w),
                          Image(
                              image: AssetImage(AppImages.profile_icon_img),
                              width: 40,
                              height: 40),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            AppImages.profile_img2,
                            height: 400,
                            width: 400,
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          Positioned(
                            left: 50,
                            top: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    widget.style,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.black),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                                Text(
                                  'Koln - Germany',
                                  style: TextStyle(
                                    color: Colors.white30,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView(physics: BouncingScrollPhysics(), children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Row(
                children: [
                  Text(
                    'Your Collection',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 130.w,
                  ),
                  Container(
                    width: 50,
                    color: Colors.white,
                    child: Text(
                      widget.date,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      Widget itemWidget;

                      if (index < 3) {
                        itemWidget = Image(
                          image: AssetImage(
                            AppImages.splash_image_1,
                          ),
                          height: 10,
                          fit: BoxFit.cover,
                        );
                      } else {
                        itemWidget = Center();
                      }

                      Color itemColor;
                      if (index == 0) {
                        itemColor = Color(0xFF00FF00);
                      } else if (index == 1 || index == 2) {
                        itemColor = Color(0xFFBA5EEF);
                      } else {
                        itemColor = Colors.black12;
                      }

                      if (index == 9) {
                        itemWidget = Center(
                          child: Text(
                            'Free',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }

                      return Container(
                        decoration: BoxDecoration(
                          color: itemColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: itemWidget,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10, // Adjust the height as needed
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppConstants.about,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Text(
                    'Barber Details',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Barbar_Details(),
                Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child: Text(
                    'Shop Detail',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Shop_Details(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text(
                    'Price List',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Price_list(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    'Opening Timing',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Opening_Timimg(),
                SizedBox(
                  height: 10,
                ),
                Container(

                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white12, // Choose your border color
                      width: 2, // Choose your border width
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage(AppImages.Profile_img3),

                                width: 200,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Image(
                                  image: AssetImage(AppImages.Profile_img4),

                                  width: 100,
                                ),
                                SizedBox(height: 30,),
                                Image(
                                  image: AssetImage(AppImages.Profile_img5),

                                  width: 100,
                                ),
                              ],
                            ),
                          ],
                        ),// Add spacing between Row and additional Image
                        Image(
                          image: AssetImage(AppImages.Profile_img6), // Replace with actual image path
                      // Set the desired height
                          width: 300,  // Set the desired width
                        ),
                        SizedBox(height: 10,)
                      ],
                    ),
                  ),
                )


              ],

            )


          ]
              )
          ),

        ]

        ),
// bottomNavigationBar: Navigation_bar()
    );


  }
}

