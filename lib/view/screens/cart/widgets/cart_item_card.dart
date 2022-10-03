import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: KColors.kWhiteColor,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/mainBurger.png'),
                backgroundColor: Colors.transparent,
              ),
              KSizedBox.kWidth_10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainTitle(
                    text: 'Chicken Burger',
                    fontSize: 16,
                    color: Colors.grey.shade800,
                  ),
                  MainTitle(
                      text: 'Island Restaurant',
                      fontSize: 14,
                      color: Colors.grey.shade600),
                  KSizedBox.kHeigh_5,
                  const MainTitle(text: '₹340', fontSize: 16),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.8, color: Colors.grey)),
                      child: const Icon(Icons.remove, color: Colors.grey),
                    ),
                    KSizedBox.kWidth_10,
                    const MainTitle(text: '1', fontSize: 20),
                    KSizedBox.kWidth_10,
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.8, color: Colors.grey)),
                      child: const Icon(Icons.add, color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
