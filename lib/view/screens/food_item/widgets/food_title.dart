import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/widgets/back_button_widget.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class FoodTitle extends StatelessWidget {
  const FoodTitle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height / 2.1,
          width: size.width,
          decoration: const BoxDecoration(
              color: KColors.kThemeGreen,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              )),
        ),
        Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                children: const [BackButtonWidget()],
              ),
            ),
            KSizedBox.kHeigh_10,
            const MainTitle(
              text: 'Fried + Soft Drink Combo',
              fontSize: 20,
              color: KColors.kWhiteColor,
            ),
            const MainTitle(
              text: '₹820',
              fontSize: 20,
              color: KColors.kWhiteColor,
            ),
            KSizedBox.kHeigh_30,
            SizedBox(
              height: size.height * 0.26,
              width: double.infinity,
              child: Image.asset('assets/images/main_card_img_1.png'),
            ),
            KSizedBox.kHeigh_10,
          ],
        ),
      ],
    );
  }
}