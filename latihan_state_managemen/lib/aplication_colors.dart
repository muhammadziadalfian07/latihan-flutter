import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//class sahredState
class AplicationColor with ChangeNotifier{
  //privat _
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}