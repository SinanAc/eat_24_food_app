import 'package:eat24/utils/colors.dart';
import 'package:flutter/material.dart';

class FoodItemViewModel extends ChangeNotifier{
  // vaiables
  final Icon notFavIcon =  Icon(Icons.favorite_border,size: 32,color: Colors.grey.shade600,);
  final Icon favIcon = const Icon(Icons.favorite_outlined,color: KColors.kRedColor,size: 32);

  // add to favorite bool
  bool _isFav = false;
  get isFav => _isFav;
  set isFav(value) {
    _isFav = value;
    notifyListeners();
  }
}