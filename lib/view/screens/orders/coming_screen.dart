import 'package:eat24/view/screens/orders/widgets/order_food_card.dart';
import 'package:flutter/material.dart';

class ComingScreen extends StatelessWidget {
  const ComingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 3,
      itemBuilder: ((context, index) {
        return const OrderFoodCard();
      }),
      
    );
  }
}