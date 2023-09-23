import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../Utils/appimages.dart';
import 'Components/Circular_Indicator.dart';
import 'Components/addPix_AlertDialogbox.dart';
import 'Participation_Screen15.dart';
import 'dart:io'; // Import this to use File class

class Beard_Contest_SC2_screen16 extends StatefulWidget {
  const Beard_Contest_SC2_screen16({super.key});

  @override
  State<Beard_Contest_SC2_screen16> createState() =>
      _Beard_Contest_SC2_screen16State();
}

class _Beard_Contest_SC2_screen16State
    extends State<Beard_Contest_SC2_screen16> {
  bool isFavorited = false;
  File? selectedImage;

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

            GestureDetector(
              onTap: () {
                // Show your dialog box here
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return addPix_AlertDialogbox();
                    });
              },
              child:
              Container(
                height: 100.h,
                width: 320.w,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  border: Border.all(color: Colors.white12, width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          ClipOval(
                            child:
                            Container(
                              height: 80,
                              width: 80,
                              child: selectedImage != null
                                  ? Image.file(selectedImage!)
                                  : Image.asset(AppImages.Cntest_Screen2_Img),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "Your Photo Have Got",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 90),
                                child: Text("927 votes",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.navigate_next_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(height: 10,),
            GestureDetector(
              onTap: () async {
                final picker = ImagePicker();
                final pickedImage = await picker.pickImage(source: ImageSource.gallery);
                if (pickedImage != null) {
                  setState(() {
                    selectedImage = File(pickedImage.path);
                  });
                }
              },
              child: Container(
                height: 70.h,
                width: 320.w,
                decoration: BoxDecoration(
                  color: Color(0xffBA5EEF),
                  border: Border.all(color: Colors.white12, width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 90, right: 60, top: 20),
                  child: Text(
                    "Add a New Photo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Leader Board', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
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
                ],
              ),
            ), // Add space between the Leader Board and ListView.builder

            SizedBox(
              height: 5,
            ),

            SizedBox(
              height: 360,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                scrollDirection: Axis.horizontal,
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

                  // Initialize isFavorited here based on your logic
                  bool isFavorited = false;

                  return Padding(
                    padding: EdgeInsets.only(top: 10, left: index == 0 ? 10 : 10),
                    child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                            children: [
                              Image(
                                image: AssetImage(index % 2 == 0
                                    ? AppImages.Contacts_img1 // Replace with actual image path
                                    : AppImages.Contacts_img2), // Replace with actual image path
                                height: 90,
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 30.h,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffBA5EEF),
                                      border: Border.all(color: Colors.white12, width: 1.0),
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
                                          number[index], // Assuming 'number' is a list of strings
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
                                    Votes[index], // Assuming 'Votes' is a list of strings
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),


                                ],
                              ),
                            ])),
                  );
                },
              ),
            )
          ]),
        ));
  }
}
