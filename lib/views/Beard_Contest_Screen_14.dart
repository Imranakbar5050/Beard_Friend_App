import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appimages.dart';
import 'Beard_Contest_SC3_screen17.dart';
import 'Components/Circular_Indicator.dart';
import 'Participation_Screen15.dart';

class Beard_Contest_Screen_14 extends StatefulWidget {
  const Beard_Contest_Screen_14({super.key});

  @override
  State<Beard_Contest_Screen_14> createState() =>
      _Beard_Contest_Screen_14State();
}

class _Beard_Contest_Screen_14State extends State<Beard_Contest_Screen_14> {
  bool isFavorited = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Text(
              'Beard Contest',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 170),
            child: Text(
              'Participate in the Contest',
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
          Container(
            height: 70.h,
            width: 320.w,
            decoration: BoxDecoration(
              color: Color(0xffBA5EEF),
              border: Border.all(color: Colors.white12, width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 60, right: 60, top: 20),
              child: Text(
                "Participate in the Contest",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Leader Board', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 150,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Participation_Screen15()),
                    );
                  },
                  child: Container(
                    height: 40.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Color(0xffBA5EEF),
                      border: Border.all(color: Colors.white12, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                List<String> Votes = [
                  "1445 Votes",
                  "1035 Votes",
                  "1235 Votes",
                  "1175 Votes",
                ];
                List<String> number = [
                  "1",
                  "2",
                  "3",
                  "4",
                ];

                return Padding(
                  padding: EdgeInsets.only(top: 10, left: index == 0 ? 20 : 20),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Beard_Contest_SC3_screen17(
                            imagePath: index % 2 == 0
                                ? AppImages.Contacts_img1
                                : AppImages.Contacts_img2,
                            Votes: Votes[index],
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              index % 2 == 0
                                  ? AppImages.Contacts_img1
                                  : AppImages.Contacts_img2,
                            ),
                            height: 120,
                            width: 150,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 30.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: Color(0xffBA5EEF),
                                  border: Border.all(
                                      color: Colors.white12, width: 1.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        isFavorited
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isFavorited = !isFavorited;
                                        });
                                      },
                                    ),
                                    Text(
                                      number[index],
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                Votes[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
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
    );
  }
}
