import 'package:beard_friend/Provider/add_reservation_provider.dart';
import 'package:beard_friend/views/Reservation_Screen_13.dart';
import 'package:beard_friend/views/Reviews_screen_12.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogBoxAlert_Add_Review extends StatefulWidget {
  const DialogBoxAlert_Add_Review({super.key});

  @override
  State<DialogBoxAlert_Add_Review> createState() =>
      _DialogBoxAlert_Add_ReviewState();
}

class _DialogBoxAlert_Add_ReviewState extends State<DialogBoxAlert_Add_Review> {
  DateTime? selectedDate = DateTime.now();


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
    return Consumer<Add_reservation_provider>(builder:(context, value, child) => ElevatedButton(
      onPressed: () {
value.setselectedbutton(index);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return value.selectedindex == index
                ? Color(0xffBA5EEF) // Change color when selected
                : Colors.black38;
          },
        ),
      ),
      child: Text(text),
    ),);
  }
  bool _is7ButtonPressed = false;
  bool _is8ButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    final myprovider=Provider.of<Add_reservation_provider>(context,listen: false);
    return
      AlertDialog(
        title: Text(
          "Book a Reservation",
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
                    child: Text("Cancel",style: TextStyle(fontSize: 15),),
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
                          MaterialPageRoute(builder: (context) => Reservation_Screen_13(selectedTime: myprovider.selectedindex != -1
                          ? ["4:00 PM", "6:00 PM", "9:00 PM", "10:00 PM"][myprovider.selectedindex]
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
                      "Book",
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
