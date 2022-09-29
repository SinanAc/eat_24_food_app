import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class ResTitleSection extends StatelessWidget {
  const ResTitleSection({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          width: double.infinity,
          height: size.aspectRatio / 0.0055,
          decoration: const BoxDecoration(
            color: KColors.kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              children: const [
                MainTitle(text: 'Pizza Hut, Calicut', fontSize: 18),
                Spacer(),
                Icon(Icons.info_outline, color: KColors.kSliderColor),
                KSizedBox.kWidth_5,
                MainTitle(
                    text: 'About', fontSize: 16, color: KColors.kSliderColor),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, bottom: 50),
          child: Container(
            height: size.height / 8,
            width: size.height / 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 4, color: KColors.kWhiteColor),
              image: const DecorationImage(
                image: AssetImage('assets/images/pizzaHut.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
