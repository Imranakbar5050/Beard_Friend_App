import 'package:beard_friend/views/Selection_Screen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/appimages.dart';

class Splash_Screen_1 extends StatefulWidget {
  const Splash_Screen_1({super.key});

  @override
  State<Splash_Screen_1> createState() => _Splash_Screen_1State();
}

class _Splash_Screen_1State extends State<Splash_Screen_1> {
  initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Selection_Screen_2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 100.h,
                child: Image(image: AssetImage(AppImages.splash_image_1),)
            ),
            SizedBox(height: 10.h,),
            Container(
              child: Text("BARTFREUNDE",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: Colors.white),),

            ),
          ],
        ),
      ),
    );
  }
}
