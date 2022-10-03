import 'package:eat24/view/screens/favorite/widgets/fav_food_card.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 2.0,
            childAspectRatio: size.aspectRatio/0.64,
            ),
        itemBuilder: (context, index) {
          return const FavFoodCard();
        },
      ),
    );
  }
}
