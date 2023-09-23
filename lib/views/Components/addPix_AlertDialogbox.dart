import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Deletepic_alertdialogbox.dart';

class addPix_AlertDialogbox extends StatefulWidget {
  const addPix_AlertDialogbox({super.key});

  @override
  State<addPix_AlertDialogbox> createState() => _addPix_AlertDialogboxState();
}

class _addPix_AlertDialogboxState extends State<addPix_AlertDialogbox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      title: Text(
        "Delete a Photo",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 110),
            child: Text("Important Note"),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              'You can not Change your Current Photo.',
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "You Must follow the rules to participate in the contest.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 8,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.black,
                  size: 7,
                ),
                SizedBox(width: 5),
                Text(
                  "Here ipsum dolor sit amet, consectetuer.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.black,
                  size: 8,
                ),
                SizedBox(width: 5),
                Text(
                  "Hpsum dolor sit amet, consectetuer ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.black,
                  size: 8,
                ),
                SizedBox(width: 5),
                Text(
                  "Cras dapibus. Vivamus elementum \nsemper nisi.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Close the AlertDialog
                },
                child: Container(
                  height: 40.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    border: Border.all(color: Colors.white12, width: 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Close the AlertDialog
                },
                child: Container(
                  height: 40.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.white12, width: 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
