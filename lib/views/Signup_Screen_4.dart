import 'package:beard_friend/views/Login_Screen_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appimages.dart';

class Signup_Screen_4 extends StatefulWidget {
  const Signup_Screen_4({super.key});

  @override
  State<Signup_Screen_4> createState() => _Signup_Screen_4State();
}

class _Signup_Screen_4State extends State<Signup_Screen_4> {

  bool showPassword2 = true;
  bool showPassword = true;
  bool agreedToGDPR = false;
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 80.h,
            ),
            Container(
                height: 100.h,
                width: 100.h,
                child: Image(image: AssetImage(AppImages.splash_image_1))),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'Create An Account',
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
                'Please Signup  to your Account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                TextFormField(

                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "UserName",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.message, color: Colors.white),
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
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
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
              height: 10,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              obscureText: showPassword,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                suffixIcon: InkWell(
                  onTap: _showPassword,
                  child: Icon(Icons.visibility_off_outlined,
                      color: Colors.white), // Set icon color
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              obscureText: showPassword,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                suffixIcon: InkWell(
                  onTap: _showPassword2,
                  child: Icon(Icons.visibility_off_outlined,
                      color: Colors.white), // Set icon color
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
            SizedBox(
              height: 20,
            ),
            Container(
              width: 330,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffBA5EEF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  // When the button is pressed, show an AlertDialog.
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          "GDPR and General Terms & Conditions",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        content: Container(
                          height: 250,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: agreedToGDPR,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        agreedToGDPR = value ?? false;
                                      });
                                    },
                                  ),
                                  Text("I agree to GDPR"),
                                 
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: agreedToTerms,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        agreedToTerms = value ?? false;
                                      });
                                    },
                                  ),
                                  Text(
                                      "I agree to General \nTerms & Conditions"),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text('Make Sure you have read our Terms & Condition before Continue to the app.'),
                              SizedBox(height: 10,),
                              Center(
                                child: Container(
                                  height: 40.h,
                                  width: 120.w,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffBA5EEF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login_Screen_3(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                      );
                    },
                  );
                },
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 10),
              child: Row(
                children: [
                  Text(
                    'Already Have an Account?',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login_Screen_3(),
                            ));
                      },
                      child: Text(
                        'SignIn',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ))
                ],
              ),
            ),
          ]),
        ));
  }

  void _showPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void _showPassword2() {
    setState(() {
      showPassword2 = !showPassword2;
    });
  }
}
