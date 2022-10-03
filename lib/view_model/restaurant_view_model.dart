import 'package:flutter/material.dart';

class RestaurantViewModel extends ChangeNotifier {

  // notify listeners to refresh ui
  void notify() {
    notifyListeners();
  }
}
