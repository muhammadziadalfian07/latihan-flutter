import 'package:flutter/foundation.dart';

class ProductState with ChangeNotifier {
  int _quantitiy = 0;

  get quantitiy => _quantitiy;
  set quantitiy(newValue) {
    _quantitiy = newValue;
    notifyListeners();
  }
}
