import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circular_Indicator extends StatelessWidget {
  final double progress;
  final String text;
  const Circular_Indicator({required this.progress, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
        alignment: Alignment.center,
      children:<Widget> [
       Container(
         height: 60,
         width: 60,
         child: CircularProgressIndicator(
           color: Color(0xffBA5EEF),
           backgroundColor: Colors.white30,
           value: progress,
         ),
       ),
       Text(text, style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
  ])]

    );
  }
}
