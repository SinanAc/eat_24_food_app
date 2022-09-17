import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:eat24/utils/colors.dart';
import 'package:eat24/view/screens/account/account_screen.dart';
import 'package:eat24/view/screens/cart/cart_screen.dart';
import 'package:eat24/view/screens/favorite/favorite_screen.dart';
import 'package:eat24/view/screens/home/home_screen.dart';
import 'package:eat24/view/screens/orders/order_screen.dart';
import 'package:flutter/material.dart';

class MainPageViewModel extends ChangeNotifier{
    // variables
  int _bottomNavIndex = 0;

  // getters
  get bottomNavIndex => _bottomNavIndex;

  // setters
  set bottomNavIndex(index) {
    _bottomNavIndex = index;
    notifyListeners();
  }

  // main page bottomNav item list
  static List<BottomNavyBarItem> bottomItems = [
    BottomNavyBarItem(
        icon: const Icon(Icons.home),
        title: const Text('Homee'),
        activeColor: KColors.kThemeGreen,
        inactiveColor: Colors.grey,
        textAlign: TextAlign.center),
    BottomNavyBarItem(
      icon: const Icon(Icons.inventory),
      title: const Text('Orders'),
      activeColor: KColors.kThemeGreen,
      inactiveColor: Colors.grey,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.favorite),
      title: const Text('Favorite'),
      activeColor: KColors.kThemeGreen,
      inactiveColor: Colors.grey,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.shopping_cart),
      title: const Text('Cart'),
      activeColor: KColors.kThemeGreen,
      inactiveColor: Colors.grey,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.person),
      title: const Text('Account'),
      activeColor: KColors.kThemeGreen,
      inactiveColor: Colors.grey,
      textAlign: TextAlign.center,
    ),
  ];  

  // main page screen list 
  static List<Widget> screenList = [
    HomeScreen(),
    const OrderScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];  
}