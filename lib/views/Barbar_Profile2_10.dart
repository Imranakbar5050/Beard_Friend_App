import 'package:beard_friend/views/Barbar_Profile3_Screen11.dart';
import 'package:beard_friend/views/Components/All_NavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appconstants.dart';
import '../Utils/appimages.dart';
import 'Components/Barbar_Details.dart';
import 'Components/Navigation_Bar_beard_shops.dart';
import 'Components/Opening_Timimg.dart';
import 'Components/Price_list.dart';
import 'Components/Shop_Detils.dart';
import 'Reviews_screen_12.dart';

class Barbar_Profile2_10 extends StatefulWidget {
  final String imagePath;
  final String style;

  const Barbar_Profile2_10(
      {required this.imagePath,
        required this.style,
        super.key});

  @override
  State<Barbar_Profile2_10> createState() => _Barbar_Profile2_10State();
}

class _Barbar_Profile2_10State extends State<Barbar_Profile2_10> {
  bool isFavorite = false;
  String selectedCampaign = 'Compaign # 1'; // Initial selected campaign

  final List<String> campaigns = ['Compaign # 1', 'Compaign # 2', 'Compaign # 3',];

  final List<String> style = [
    "Creative Cuts",
    "Sunset Barber",
    "Style Cave",
  ];

  final List<String> imageList = [
    AppImages.beard_coin_img1,
    AppImages.beard_coin_img2,
    AppImages.beard_coin_img3,
  ];
  List<String> date = ["01/10", "02/10", "03/10", "04/10", "05/10"];

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
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Reviews_screen_12()),
                                        );
                                      },

                                  child:
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.black),
                                      SizedBox(width: 5,),
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
                                ),
                                SizedBox(
                                  width: 35.w,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBA5EEF),
                                    borderRadius: BorderRadius.circular(12), // Circular border
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Reservation",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

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
          height: 10,
        ),

        Expanded(
            child: ListView(physics: BouncingScrollPhysics(), children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Choose Campaign',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.black, // Set the dropdown menu background color to black
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
              value: selectedCampaign,
              onChanged: (newValue) {
                  setState(() {
                    selectedCampaign = newValue!;
                  });
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Barbar_Profile3_Screen11(SelectedCampaign: selectedCampaign,
                        imagePath: imageList[campaigns.indexOf(selectedCampaign)],
                        style: style[campaigns.indexOf(selectedCampaign)],
                        date: date[campaigns.indexOf(selectedCampaign)],
                        compaigns: campaigns[campaigns.indexOf(selectedCampaign)],

                      ),
                    ),
                  );
              },
              items: campaigns.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.white), // Set text color to white
                    ),
                  );
              }).toList(),
                  ),
                ),
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


            ]
            )
        ),

      ]
      ),
      //  bottomNavigationBar: Navigation_Bar_beard_shops(),
    );
  }
}
