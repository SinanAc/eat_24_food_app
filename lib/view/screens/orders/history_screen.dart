import 'package:eat24/view/screens/orders/widgets/order_food_card.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: ((context, index) {
        return const OrderFoodCard();
      }),
      
    );
  }
}