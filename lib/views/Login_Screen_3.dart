import 'package:beard_friend/views/Beard_Coins_Screen_7.dart';
import 'package:beard_friend/views/Home_Screen_6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/appimages.dart';
import 'Components/All_NavigationBar.dart';
import 'Signup_Screen_4.dart';
import 'free_Stmp_Screen_5.dart';

class Login_Screen_3 extends StatefulWidget {
  const Login_Screen_3({super.key});

  @override
  State<Login_Screen_3> createState() => _Login_Screen_3State();
}

class _Login_Screen_3State extends State<Login_Screen_3> {

  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 80.h,),
            Container(
                height: 100.h,
                width: 100.h,
                child: Image(image: AssetImage(AppImages.splash_image_1))),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'Please Login to your Account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 30.h,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(style: TextStyle(color: Colors.white),
                      obscureText: showPassword,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        suffixIcon: InkWell(
                          onTap: _showPassword,
                          child: Icon(Icons.visibility_off_outlined, color: Colors.white), // Set icon color
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),


                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: TextButton(
                              onPressed: () {
                                // Show an AlertDialog
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      color: Colors.black,
                                      height: 400,
                                      width: 300,
                                      child: SingleChildScrollView(
                                        child: AlertDialog(
                                          title: Column(
                                            children: [
                                              Text("Forgot Password!", style: TextStyle(fontSize: 25),),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("Enter your email for the verification proccesss,we will send 4 digits code to your email.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                width: 340,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      hintText: "Email Address",
                                                      prefixIcon: Icon(Icons.email),
                                                      border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10))),
                                                ),
                                              ),
                                              SizedBox(height: 20,),
                                              Container(
                                                height: 50,
                                                width: 220,
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: Color(0xffBA5EEF),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                    ),

                                                    onPressed: () {
                                                      Navigator.of(context).pop(); // Close the dialog
                                                    },
                                                    child:
                                                    Text(
                                                      "Reset Password",
                                                      style: TextStyle(
                                                        fontSize: 20.sp,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    )
                                                ),

                                              ),

                                            ],
                                          ),

                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text('Forgot Password?' , style: TextStyle(fontSize: 18,color: Colors.white),))
                      ),
                    ),



                    SizedBox(height: 10,),

                    Column(
                      children: [
                        Container(
                          width: 320,
                          height: 60,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffBA5EEF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  )),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => All_NavigationBar(),
                                    ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Row(
                                  children: [
                                    Icon(Icons.lock),
                                    SizedBox(width: 15,),
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),
                              )),
                        )
                      ],

                    ),
                    SizedBox(
                      height: 10,
                    ),
                     Center(child: Text('or Continue With',style: TextStyle(color: Colors.white),)),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 130,right: 130),
                      child: Row(
                        children: [
                          Icon(Icons.facebook_outlined,color: Colors.lightGreen,size: 40,),
                          Icon(Icons.g_mobiledata,color: Colors.white,size: 40,)

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text('Not have an Account?',style: TextStyle(fontSize: 15,color: Colors.white70),),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup_Screen_4(),));
                          }, child: Text('Create One' , style: TextStyle(fontSize: 15,color: Colors.white),))
                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),

          ]),
        ) );
  }

  void _showPassword() {
    setState(() {
      showPassword=!showPassword;
    });
  }

}

