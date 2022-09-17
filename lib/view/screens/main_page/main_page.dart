import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:eat24/view_model/main_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainPageProvider = Provider.of<MainPageViewModel>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 232, 232, 232),
      body: MainPageViewModel.screenList[mainPageProvider.bottomNavIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: mainPageProvider.bottomNavIndex,
        onItemSelected: (index) {
            mainPageProvider.bottomNavIndex = index;        },
        items: [
          MainPageViewModel.bottomItems[0],
          MainPageViewModel.bottomItems[1],
          MainPageViewModel.bottomItems[2],
          MainPageViewModel.bottomItems[3],
          MainPageViewModel.bottomItems[4],
        ],
        curve: Curves.decelerate,
      ),
    );
  }
}
