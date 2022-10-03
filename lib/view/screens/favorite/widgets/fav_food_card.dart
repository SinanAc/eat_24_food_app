import 'package:eat24/utils/colors.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class FavFoodCard extends StatelessWidget {
  const FavFoodCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: KColors.kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.favorite,
                  color: KColors.kRedColor,
                ),
              ),
              const Align(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/mainBurger.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const Spacer(),
              MainTitle(
                text: 'Chicken Burger',
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
              const MainTitle(text: '₹340', fontSize: 16),
            ],
          ),
        ));
  }
}
