import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({super.key});

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {
  double _sliderValue = 5; // Initial value of the slider

  void _updateSliderValue(double newValue) {
    setState(() {
      _sliderValue = newValue;
    });
  }
  bool _isFirstButtonPressed = false;
  bool _isSecondButtonPressed = false;
  bool _isThirdButtonPressed = false;
  bool _isFourthButtonPressed = false;
  bool _isFifthButtonPressed = false;
  bool _isSixthButtonPressed = false;
  bool _is7ButtonPressed = false;
  bool _is8ButtonPressed = false;


  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
      title: Text(
        "Search Filter",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Text(
            "Sort by",
            style:
            TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isFirstButtonPressed =
                    true;
                    _isSecondButtonPressed =
                    false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty
                      .resolveWith<Color>(
                        (Set<MaterialState>
                    states) {
                      if (_isFirstButtonPressed) {
                        return Color(0xffBA5EEF); // Change color when pressed
                      }
                      return Colors.black38;
                    },
                  ),
                ),
                child: Text("Price"),
              ),
              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isFirstButtonPressed = false;
                    _isSecondButtonPressed = true;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty
                      .resolveWith<Color>(
                        (Set<MaterialState>
                    states) {
                      if (_isSecondButtonPressed) {
                        return Color(0xffBA5EEF); // Change color when pressed
                      }
                      return Colors.black38;
                    },
                  ),
                ),
                child: Text("Rating"),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(
            "Distance in Km",
            style:
            TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),



          Slider(
            value: _sliderValue,
            min: 1,
            max: 100,
            onChanged: (value) {
              _updateSliderValue(value); // Update the slider value
            },
            activeColor: Color(0xffBA5EEF),
            label: "${_sliderValue.toStringAsFixed(1)}km", // Display value on thumb
           divisions: 100,
          ),




          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1 km", // Starting value of the slider
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "100 km", // Ending value of the slider
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
SizedBox(height: 10,),

          Text(
            "Language",
            style:
            TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isThirdButtonPressed =
                    true;
                    _isFourthButtonPressed =
                    false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty
                      .resolveWith<Color>(
                        (Set<MaterialState>
                    states) {
                      if (_isThirdButtonPressed) {
                        return Color(0xffBA5EEF); // Change color when pressed
                      }
                      return Colors.black38;
                    },
                  ),
                ),
                child: Text("English"),
              ),
              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isThirdButtonPressed = false;
                    _isFourthButtonPressed = true;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty
                      .resolveWith<Color>(
                        (Set<MaterialState>
                    states) {
                      if (_isFourthButtonPressed) {
                        return Color(0xffBA5EEF); // Change color when pressed
                      }
                      return Colors.black38;
                    },
                  ),
                ),
                child: Text("Urdu"),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(
            "Size",
            style:
            TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isFifthButtonPressed =
                    true;
                    _isSixthButtonPressed =
                    false;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty
                      .resolveWith<Color>(
                        (Set<MaterialState>
                    states) {
                      if (_isFifthButtonPressed) {
                        return Color(0xffBA5EEF); // Change color when pressed
                      }
                      return Colors.black38;
                    },
                  ),
                ),
                child: Text("1-5"),
              ),
              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isFifthButtonPressed = false;
                    _isSixthButtonPressed = true;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty
                      .resolveWith<Color>(
                        (Set<MaterialState>
                    states) {
                      if (_isSixthButtonPressed) {
                        return Color(0xffBA5EEF); // Change color when pressed
                      }
                      return Colors.black38;
                    },
                  ),
                ),
                child: Text("6-10"),
              ),
            ],
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
                  child: Text("Reset",style: TextStyle(fontSize: 15),),
                ),
              ),
              SizedBox(width: 10),

              Container(
                height: 40,
                  width: 110,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _is7ButtonPressed = false;
                      _is8ButtonPressed = true;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty
                        .resolveWith<Color>(
                          (Set<MaterialState>
                      states) {
                        if (_is8ButtonPressed) {
                          return Color(0xffBA5EEF); // Change color when pressed
                        }
                        return Colors.black38;
                      },
                    ),
                  ),
                  child: Text("Apply",style: TextStyle(fontSize: 15),),
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
