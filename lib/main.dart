import 'package:beard_friend/views/Splash_Screen_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Provider/Selection_Screen_2_provider.dart';
import 'Provider/add_reservation_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MultiProvider(providers: [
          ChangeNotifierProvider(create:(context) => Selection_Screen_2_provider(),),
          ChangeNotifierProvider(create:(context) => Add_reservation_provider(),),
        ],
          child:MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash_Screen_1(),
        ),
        );

      },
    );
  }
}
