
import 'package:flutter/cupertino.dart';
class Selection_Screen_2_provider extends ChangeNotifier{

   bool isButton1Pressed = false;
   bool isButton2Pressed = false;

  void onButton1Pressed() {
    isButton1Pressed = true;
    isButton2Pressed = false;
    notifyListeners();
  }
  void onButton2Pressed() {

      isButton1Pressed = false;
      isButton2Pressed = true;
      notifyListeners();
  }
}