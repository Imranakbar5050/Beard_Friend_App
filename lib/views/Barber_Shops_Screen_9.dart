import 'package:beard_friend/views/Components/All_NavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appimages.dart';
import 'Barbar_Profile2_10.dart';
import 'Components/AlertDialogBox.dart';
import 'Components/Navigation_Bar_beard_shops.dart';


class Barber_Shops_Screen_9 extends StatefulWidget {
  const Barber_Shops_Screen_9({super.key});

  @override
  State<Barber_Shops_Screen_9> createState() => _Barber_Shops_Screen_9State();
}

class _Barber_Shops_Screen_9State extends State<Barber_Shops_Screen_9> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Text(
                'Beard Shops',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Text(
                'Find Your Barber Here',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 290,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon:
                          GestureDetector(
                            onTap: () {
                              // Show your dialog box here
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return
                                      AlertDialogBox();
                                  });
                            },
                            child: Icon(Icons.filter_list, color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color(0xffBA5EEF),
                      borderRadius: BorderRadius.circular(8.0),
                    ), // Make the container circular
                    child: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                'Popular Barbers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (context, index) {
                  List<String> style = [
                    "Creative Cuts",
                    "Sunset Barber",
                    "Style Cave",
                  ];
                  List<String> location = [
                    "Pindi - 34 Kms",
                    "Irale - 54 Kms",
                    "Lahore - 21 Kms",
                  ];

                  List<String> imageList = [
                    AppImages.beard_coin_img1,
                    AppImages.beard_coin_img2,
                    AppImages.beard_coin_img3,
                  ];
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the new screen here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Barbar_Profile2_10(imagePath: imageList[index], style: style[index],), // Replace with your new screen widget
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
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
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          style[index],
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Container(
                                          width: 60,
                                          color: Colors.white,
                                          child: Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.black),
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
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 80),
                                      child: Text(
                                        location[index],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Icon(
                                  Icons.navigate_next_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Navigation_Bar_beard_shops(),
    );
  }
}
