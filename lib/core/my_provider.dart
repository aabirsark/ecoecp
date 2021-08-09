import 'package:flutter/foundation.dart';

class MyProvider with ChangeNotifier {
  int _val = 0;

  // ? getter
  int get val => _val;

  void setVal(int i) {
    _val = i;
    notifyListeners();
  }
}
