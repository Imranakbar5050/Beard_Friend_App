import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Reservation_Screen_13.dart';

class Update_Review_Dialogbox extends StatefulWidget {
  const Update_Review_Dialogbox({super.key});

  @override
  State<Update_Review_Dialogbox> createState() => _Update_Review_DialogboxState();
}

class _Update_Review_DialogboxState extends State<Update_Review_Dialogbox> {
  DateTime? selectedDate = DateTime.now();
  int selectedButtonIndex = -1;

  Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
  context: context,
  initialDate: selectedDate!,
  firstDate: DateTime(2000),
  lastDate: DateTime(2101),
  );

  if (picked != null && picked != selectedDate) {
  setState(() {
  selectedDate = picked;
  });
  }
}
// Initialize with -1 (no button selected)

Widget _buildButton(String text, int index) {
  return ElevatedButton(
    onPressed: () {
      setState(() {
        selectedButtonIndex = index;
      });
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return selectedButtonIndex == index
              ? Color(0xffBA5EEF) // Change color when selected
              : Colors.black38;
        },
      ),
    ),
    child: Text(text),
  );
}
bool _is7ButtonPressed = false;
bool _is8ButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Update Your Reservation",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Date",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () => _selectDate(context),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "${selectedDate?.day}-${selectedDate?.month}-${selectedDate?.year}",
                    ),
                    SizedBox(width: 110),
                    Icon(Icons.date_range),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Available Slots",
            style: TextStyle(color: Colors.white),
          ),


          Container(
            child: Column(
              children: [
                Row(
                    children: [
                      _buildButton("4:00 PM", 0),
                      SizedBox(width: 30),
                      _buildButton("6:00 PM", 1),
                    ]
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    _buildButton("9:00 PM", 2),
                    SizedBox(width: 30),
                    _buildButton("10:00 PM", 3),

                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: 110,
                height: 40,
                child: ElevatedButton(

                  onPressed: () {
                    setState(() {
                      _is7ButtonPressed =
                      true;
                      _is8ButtonPressed =
                      false;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty
                        .resolveWith<Color>(
                          (Set<MaterialState>
                      states) {
                        if (_is7ButtonPressed) {
                          return Color(0xffBA5EEF); // Change color when pressed
                        }
                        return Colors.black38;
                      },
                    ),
                  ),
                  child: Text("Delete",style: TextStyle(fontSize: 15,color: Colors.white),),
                ),
              ),
              SizedBox(width: 10),

              Container(
                height: 40,
                width: 110,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the next screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Reservation_Screen_13(selectedTime: selectedButtonIndex != -1
                        ? ["4:00 PM", "6:00 PM", "9:00 PM", "10:00 PM"][selectedButtonIndex]
                          : "No Time",selectdate: "${selectedDate?.day}-${selectedDate?.month}-${selectedDate?.year}",

                        )
                        ));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (_is8ButtonPressed) {
                          return Color(0xffBA5EEF); // Change color when pressed
                        }
                        return Colors.black38;
                      },
                    ),
                  ),
                  child: Text(
                    "Change",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
