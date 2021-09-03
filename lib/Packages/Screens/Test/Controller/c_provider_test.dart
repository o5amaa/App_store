import 'package:flutter/material.dart';

class CProviderTest with ChangeNotifier {
  int cnt = 0;

  incCnt(itme) {
    cnt++;
    notifyListeners();
  }
}
