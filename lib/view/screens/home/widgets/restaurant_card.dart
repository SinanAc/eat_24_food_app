import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/view/screens/restaurant/restaurant_screen.dart';
import 'package:eat24/view/widgets/single_color_title.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        PushFunctions.push(context, const RestaurantScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(right: 7.0),
        width: MediaQuery.of(context).devicePixelRatio * 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14), topRight: Radius.circular(14)),
                child: Image(
                  height: MediaQuery.of(context).devicePixelRatio * 29,
                  fit: BoxFit.cover,
                  image: const AssetImage('assets/images/pizzaHut.jpg'),
                ),
              ),
            ),
            const Expanded(
              child: Center(
                child: SingleColorTitle(text: 'Pizza Hut',fontSize: 13,)
              ),
            )
          ],
        ),
      ),
    );
  }
}
