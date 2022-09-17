import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Color color;
  const MainCard({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MainTitle(
                      text: 'Latest',
                      fontSize: 22,
                      weight: FontWeight.bold,
                    ),
                    const MainTitle(
                      text: 'Arrival',
                      fontSize: 28,
                      color: KColors.kThemeGreen,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: size.width * 0.45,
                      child: const Text(
                        'Before you go to dfugd ewruy gfiu fiuwryufrufy rgfyriu r 8ruy',
                        style: TextStyle(
                          fontFamily: 'SubMainFont',
                        ),
                      ),
                    ),
                    KSizedBox.kWidth_5,
                    Container(
                      decoration: BoxDecoration(
                          color: KColors.kThemeYellow,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Order Now',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset('assets/images/main_card_img_1.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
