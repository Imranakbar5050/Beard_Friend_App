import 'package:beard_friend/views/Barbar_Profile_Screen_8.dart';
import 'package:beard_friend/views/Components/All_NavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/appimages.dart';

class Beard_Coins_Screen_7 extends StatefulWidget {
  const Beard_Coins_Screen_7({super.key});
  @override
  State<Beard_Coins_Screen_7> createState() => _Beard_Coins_Screen_7State();
}

class _Beard_Coins_Screen_7State extends State<Beard_Coins_Screen_7> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        SingleChildScrollView(
          child:
          Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  'Beard Coins',
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
                  'Your Collections',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 520,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    List<String> style = [
                      "Creative Cuts",
                      "Sunset Barber",
                      "Style Cave",
                      "The Urban Shave",
                      "Medal Barber"
                    ];
                    List<String> date = ["01/10",
                      "02/10",
                      "03/10",
                      "04/10",
                      "05/10"
                    ];

                    List<String> imageList = [
                      AppImages.beard_coin_img1,
                      AppImages.beard_coin_img2,
                      AppImages.beard_coin_img3,
                      AppImages.beard_coin_img4,
                      AppImages.beard_coin_img5,
                    ];
                    return
                      GestureDetector(
                      onTap: () {
                        // Navigate to the new screen here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Barbar_Profile_Screen_8(imagePath: imageList[index], style: style[index],date: date[index],), // Replace with your new screen widget
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 120),
                                        child: Text(
                                          style[index],
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              color: Colors.white,
                                              child: Text(
                                                date[index],
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            Text(
                                              "Coins Collected",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
        ),);

  }
}
