import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Beard_Contest_SC2_screen16.dart';
// ... (import statements)

class ParticipateDialogbx extends StatefulWidget {
  const ParticipateDialogbx({Key? key}) : super(key: key);

  @override
  State<ParticipateDialogbx> createState() => _ParticipateDialogbxState();
}

class _ParticipateDialogbxState extends State<ParticipateDialogbx> {
  bool firstCheckboxValue = false;
  bool secondCheckboxValue = false;

  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
      backgroundColor: Colors.grey,
      title: Text("Participate",style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,fontSize: 20),),
      content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Text("Upload Photo"),
          ),
          Row(
            children: [
              CustomPaint(
                painter: DottedBorderPainter(),
                child: Icon(
                  Icons.image_outlined,
                  size: 50,
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Upload Your Photo Here',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('You must Upload at least 1 \nPhoto of type .jpg or .png',style: TextStyle(fontSize: 12),)
              ],
            ),
          )
        ],
      ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text('Rules for Participaiton'),
          ),
          SizedBox(height: 10,),
          Text("You Must follow the rules to participate in the contest.",style: TextStyle(color: Colors.black,fontSize: 8,fontWeight: FontWeight.normal),),
          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(Icons.circle,color: Colors.black,size: 7,),
                SizedBox(width: 5,),
                Text("Here ipsum dolor sit amet, consectetuer.",style: TextStyle(color: Colors.black,fontSize: 8,fontWeight: FontWeight.normal),),

              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(Icons.circle,color: Colors.black,size: 8,),
                SizedBox(width: 5,),
                Text("Hpsum dolor sit amet, consectetuer ",style: TextStyle(color: Colors.black,fontSize: 8,fontWeight: FontWeight.normal),),

              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(Icons.circle,color: Colors.black,size: 8,),
                SizedBox(width: 5,),
                Text("Cras dapibus. Vivamus elementum \nsemper nisi.",style: TextStyle(color: Colors.black,fontSize: 8,fontWeight: FontWeight.normal),),

              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: firstCheckboxValue,
                onChanged: (value) {
                  setState(() {
                    firstCheckboxValue = value!;
                  });
                },
              ),
              Text('I agree and accept Rules',style: TextStyle(fontSize: 15),),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: secondCheckboxValue,
                onChanged: (value) {
                  setState(() {
                    secondCheckboxValue = value!;
                  });
                },
              ),
              Text('I agree and accept Rules\n Gernal Terms & Conditions',style: TextStyle(fontSize: 15),),
            ],
          ),

          SizedBox(height: 20,),

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
                      "Discard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Beard_Contest_SC2_screen16()),
                  );
                },
                child: Container(
                  height: 40.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xffBA5EEF),
                    border: Border.all(color: Colors.white12, width: 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      "Participate",
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

  ]),

    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final dashWidth = 5; // Adjust this to change the length of dashes
    final dashSpace = 5; // Adjust this to change the space between dashes

    // Draw top border
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    // Draw bottom border
    startX = 0;
    double startY = size.height;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, startY),
        Offset(startX + dashWidth, startY),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    // Draw left border
    double startYY = 0;
    while (startYY < size.height) {
      canvas.drawLine(
        Offset(0, startYY),
        Offset(0, startYY + dashWidth),
        paint,
      );
      startYY += dashWidth + dashSpace;
    }

    // Draw right border
    double startYYY = 0;
    double startXx = size.width;
    while (startYYY < size.height) {
      canvas.drawLine(
        Offset(startXx, startYYY),
        Offset(startXx, startYYY + dashWidth),
        paint,
      );
      startYYY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// ... (main and runApp)
