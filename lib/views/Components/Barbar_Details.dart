import 'package:flutter/material.dart';

class Barbar_Details extends StatefulWidget {

  const Barbar_Details({super.key});

  @override
  State<Barbar_Details> createState() => _Barbar_DetailsState();
}

class _Barbar_DetailsState extends State<Barbar_Details> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Address",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              SizedBox(width: 50,),
              Text("Koln - Germany",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Web",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              SizedBox(width: 70,),
              Text("www.creativecut-cologne.de",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Tel",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              SizedBox(width: 80,),
              Text("03051615050",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Mail",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              SizedBox(width: 70,),
              Text("imranakbar620@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
