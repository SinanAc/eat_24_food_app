import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/food_item/food_item_screen.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class ResFoodItem extends StatelessWidget {
  const ResFoodItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          PushFunctions.push(context, FoodItemScreen());
        },
        child: Card(
          elevation: 0,
          color: KColors.kWhiteColor,
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/onboard-1.png'),
                  backgroundColor: Colors.transparent,
                ),
                KSizedBox.kWidth_10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainTitle(
                      text: 'Fried chicks (6ps)',
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                    const MainTitle(text: '₹760', fontSize: 16),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ));
  }
}
