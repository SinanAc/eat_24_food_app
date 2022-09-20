import 'package:eat24/utils/colors.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Icon(
            Icons.place,
            color: KColors.kWhiteColor,
            size: 22,
          ),
          SizedBox(width: 2),
          Text(
            '507, BCK Kinfra, Calicut 670546',
            style: TextStyle(
                color: Color.fromARGB(137, 255, 255, 255),
                fontFamily: 'SubMainFont'),
          ),
        ],
      ),
    );
  }
}