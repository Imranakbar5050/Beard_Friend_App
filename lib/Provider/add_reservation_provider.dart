import 'package:flutter/cupertino.dart';
class Add_reservation_provider extends ChangeNotifier{
  int selectedButtonIndex = -1;

  int get selectedindex=>selectedButtonIndex;

  void setselectedbutton(int index){
    selectedButtonIndex=index;
    notifyListeners();
  }




}