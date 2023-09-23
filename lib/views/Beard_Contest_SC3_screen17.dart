import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Beard_Contest_SC3_screen17 extends StatefulWidget {
  final String imagePath;
  final String Votes;


  const Beard_Contest_SC3_screen17({required this.imagePath, required this.Votes,super.key});

  @override
  State<Beard_Contest_SC3_screen17> createState() => _Beard_Contest_SC3_screen17State();
}

class _Beard_Contest_SC3_screen17State extends State<Beard_Contest_SC3_screen17> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600,left: 20,right: 20),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey, // Set the background color to gray
                border: Border.all(color: Colors.white, width: 2), // Set the white border
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    widget.Votes,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 100),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
