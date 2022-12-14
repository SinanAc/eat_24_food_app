import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:eat24/utils/colors.dart';
import 'package:eat24/view_model/main_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainPageController = Provider.of<MainPageViewModel>(context);
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, backgroundColor: KColors.kThemeGreen),
      backgroundColor:  KColors.kThemeBackground,
      body: SafeArea(child: MainPageViewModel.screenList[mainPageController.bottomNavIndex]),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: mainPageController.bottomNavIndex,
        onItemSelected: (index) {
          mainPageController.bottomNavIndex = index;
        },
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
