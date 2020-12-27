import 'package:flutter/foundation.dart';

class TimeState with ChangeNotifier {
  int _time = 5;

  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
