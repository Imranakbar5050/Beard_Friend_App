import 'package:beard_friend/Utils/appimages.dart';
import 'package:beard_friend/views/Components/All_NavigationBar.dart';
import 'package:beard_friend/views/Components/Update_Review_Dialogbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Reservation_Screen_13 extends StatefulWidget {
  final String selectdate;
  final String selectedTime;

  const Reservation_Screen_13(
      {required this.selectdate, required this.selectedTime, super.key});

  @override
  State<Reservation_Screen_13> createState() => _Reservation_Screen_13State();
}

class _Reservation_Screen_13State extends State<Reservation_Screen_13> {
  String submittedFeedback = "";
  void submitFeedback(String feedback) {

    setState(() {
      submittedFeedback = feedback;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Text(
              'Reservations',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Text(
              "All of Your Reservations",
              style: TextStyle(
                fontSize: 13,
                color: Colors.white38,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
                        child: Image(
                          image: AssetImage(AppImages.beard_coin_img1),
                          height: 80,
                          width: 80,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text(
                              "Creative Cuts",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.selectedTime,
                                style: TextStyle(color: Colors.white38),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'on',
                                style: TextStyle(color: Colors.white38),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.selectdate,
                                style: TextStyle(color: Colors.white38),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    // Show your dialog box here
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Update_Review_Dialogbox();
                                        });
                                  },
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white38,
                                    size: 15,
                                  ))
                            ],
                          )
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      String newFeedback = ""; // Variable to hold the new feedback

                      return AlertDialog(
                        title: Column(
                          children: [
                            Text("Give Feedback",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('How did we do?'),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Color(0xffBA5EEF)),
                                Icon(Icons.star, color: Color(0xffBA5EEF)),
                                Icon(Icons.star, color: Color(0xffBA5EEF)),
                                Icon(Icons.star, color: Color(0xffBA5EEF)),
                                Icon(Icons.star, color: Colors.grey),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 2,
                                onChanged: (value) {
                                  newFeedback = value; // Update the new feedback
                                },
                                decoration: InputDecoration(
                                  hintText: "Write a Review",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the AlertDialog
                            },
                            child: Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () {
                              submitFeedback(newFeedback); // Submit the feedback
                              Navigator.of(context).pop(); // Close the AlertDialog
                            },
                            child: Text("Submit"),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text(
                  "Add Review",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Clear the submitted feedback when "Not Interested" is clicked
                  setState(() {
                    submittedFeedback = "";
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text(
                  "Delete Review",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ]),
          ),

          // Display submitted feedback
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100.h,
            width: 320.w,
            decoration: BoxDecoration(
              color: Colors.white12,
              border: Border.all(color: Colors.white12, width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(submittedFeedback,style: TextStyle(color: Colors.white,),), // Display the submitted feedback here
            ),
          )
        ]),
      ),

    );
  }
}

