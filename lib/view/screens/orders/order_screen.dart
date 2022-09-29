import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/orders/coming_screen.dart';
import 'package:eat24/view/screens/orders/history_screen.dart';
import 'package:eat24/view/screens/orders/widgets/tab_widget.dart';
import 'package:eat24/view/widgets/double_color_title.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          ColoredBox(
            color: KColors.kWhiteColor,
            child: Column(
              children: [
                KSizedBox.kHeigh_10,
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 18),
                  child: DoubleColorTitle(
                      text1: 'My', text2: 'Order', textSize: 24),
                ),
                TabBar(
                  unselectedLabelColor: Colors.grey.shade500,
                  labelColor: KColors.kSliderColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: const [
                    TabWidget(text: 'Coming'),
                    TabWidget(text: 'History'),
                  ],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: KColors.kTabBarColor,
                  ),
                ),
                KSizedBox.kHeigh_10,
              ],
            ),
          ),
          KSizedBox.kHeigh_10,
          const Expanded(
            child:
                TabBarView(physics: NeverScrollableScrollPhysics(), children: [
              ComingScreen(),
              HistoryScreen(),
            ]),
          ),
        ],
      ),
    );
  }
}
