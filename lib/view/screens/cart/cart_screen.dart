import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/cart/widgets/cart_item_card.dart';
import 'package:eat24/view/widgets/button_widget.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KSizedBox.kHeigh_10,
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: ((context, index) {
              return const CartItemCard();
            }),
          ),
        ),
        ColoredBox(
          color: KColors.kWhiteColor,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainTitle(
                      text: 'Total (inc all taxex)',
                      fontSize: 18,
                      color: Colors.grey.shade700,
                    ),
                    const MainTitle(
                      text: '₹ 2860',
                      fontSize: 20,
                    ),
                  ],
                ),
                ButtonWidget(
                  text: 'Proceed to pay',
                  onTap: () {},
                  width: MediaQuery.of(context).size.width / 2.5,
                  color: KColors.kThemeGreen,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
